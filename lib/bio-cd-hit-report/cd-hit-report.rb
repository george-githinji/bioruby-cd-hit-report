module Bio

require_relative 'cluster.rb'

  class CdHitReport

    def initialize(file)
      @file = file
    end


    def each_cluster(&block)
      parse.each(&block)
    end

    private

    def parse
      raw_data.map do |line|
        cluster = line.split("\n").delete_if{|x| x == ">Cluster "}
        id = cluster.first
        cluster.shift
        cluster = Cluster.new(id,cluster)
      end
    end

    def raw_data
      File.open(@file).readlines
    end

  end #class
end #module
