module Bio
  require_relative 'cluster'
  require_relative 'parser'

  class CdHitReport

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

    def size
     clusters.size
    end

    def get_members(cluster_id)
      clusters.select {|cluster| cluster.cluster_id == cluster_id.to_s}.map{|c|c.members}
    end
  end
end
