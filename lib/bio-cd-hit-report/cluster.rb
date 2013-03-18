class Cluster
  attr_accessor :name, :data

  def initialize(arg={})
    self.name = arg[:name]
    self.data = arg[:data] 
  end

  def cluster_id
    name.scan(/Cluster\s(.*)/).join
  end

  def members
    entries.join(',')
  end

  def representative
    data.split("\n").map{|line|line.scan(/>(.+)\.{3}\s\*/)}.join
  end
  alias :rep_seq :representative

  def size
    entries.size
  end
  alias :length :size

  def entries
    data.split("\n").map{|line|line.scan(/>(.+)\.{3}/)}
  end
end
