class Cluster < Struct.new(:id,:data)
  $/ = ">Cluster "

  def size
    parse_members.size
  end

  def members
    parse_members.join(',')
  end

  def name
    id
  end

  private
  def parse_members
    data.map {|entry| entry.scan(/>(.+)\.{3}/)}.flatten
  end
end

