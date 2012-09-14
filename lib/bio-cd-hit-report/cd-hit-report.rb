module Bio

require_relative 'cluster.rb'

  class CdHitReport

    def initialize(file)
      @file = file
    end

    def each_cluster(&block)
      cluster_objs.each(&block)
    end

    def most_members
      cluster_objs.map{|c|c.size}.max
    end

    def least_members
      cluster_objs.map{|c| c.size}.min
    end

    private
    def cluster_objs
      raw_data.map do |line|
        cluster = line.split("\n").delete_if{|x| x == ">Cluster "}
        id = cluster.first
        cluster.shift
        Cluster.new(id,cluster)
      end
    end

    def raw_data
      File.open(@file).readlines
    end

  end #class
end #module
