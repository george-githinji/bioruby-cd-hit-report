class CdHitParser
  attr_accessor :report_file

  def each
    data,header = nil, nil
    File.open(report_file).each do |line|
      if line[0].chr == '>'
        yield Cluster.new(:name => header,:data => data) if data
        data = ''
        header = line[1..-1].strip
      else
        data << line
      end
    end
    yield Cluster.new(:name => header, :data => data)
  end
end
