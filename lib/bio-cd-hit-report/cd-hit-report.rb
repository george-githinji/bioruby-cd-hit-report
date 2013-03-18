module Bio
  require_relative 'cluster'
  require_relative 'parser'

  class CdHitReport
    include Enumerable

    def initialize(file)
      @report  = CdHitParser.new
      @report.report_file = file
    end

    def clusters
      cls = []
      @report.each do |c|
        cls << c
      end
      cls
    end

    def each_cluster(&block)
      clusters.each(&block)
    end

    def total_clusters
      clusters.size
    end

    def get_members(cluster_id)
      clusters.select {|cluster| cluster.cluster_id == cluster_id.to_s}.map{|c|c.members}
    end
    alias :get_cluster :get_members
  end
end
