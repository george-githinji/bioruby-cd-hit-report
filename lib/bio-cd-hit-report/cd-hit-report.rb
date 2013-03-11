module Bio
  require_relative 'cluster'
  require_relative 'parser'

  class CdHitReport
    def initialize(file)
      @file = file
    end

    def parse
      report = CdHitParser.new
      report.report_file = @file
      report
    end
  end
end
