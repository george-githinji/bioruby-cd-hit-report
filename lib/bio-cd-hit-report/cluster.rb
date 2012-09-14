class Cluster < Struct.new(:name,:data)
  $/ = ">Cluster "

  def id
    name
  end

  def size
    entries.size
  end

  def members
    entries.join(',')
  end

  private
  def entries
    data.map {|entry| entry.scan(/>(.+)\.{3}/)}.flatten
  end
end

