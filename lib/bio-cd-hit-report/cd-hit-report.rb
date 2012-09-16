module Bio

  require_relative 'cluster.rb'

  class CdHitReport

    def initialize(file)
      @file = file
    end

    def each_cluster(&block)
      cluster_objs.each(&block)
    end

    def total_clusters
      cluster_objs.size
    end

    def get_cluster(name)
      cluster_objs.select{|cluster| cluster.name == name.to_s}.pop.members
    end

    def max_members
      cluster_objs.map{|c|c.size}.max
    end

    def min_members
      cluster_objs.map{|c| c.size}.min
    end

    private
    def cluster_objs
      d = raw_data.map do |line|
        cluster = line.split("\n").delete_if{|x| x == ">Cluster "}
        id = cluster.first
        cluster.shift
        #puts id.inspect
        Cluster.new(id,cluster)
      end
      d.delete_if {|obj| obj.id.nil?}
    end


    def raw_data
      File.open(@file).readlines
    end

  end #class
end #module
