class Cluster
  attr_accessor :name, :data

  def initialize(arg={})
    @name = arg[:name]
    @data = arg[:data] 
  end

  def id
    name.scan(/Cluster\s(.)/).join
  end

  def members
    entries.join(',')
  end

  def representative
    @data.split("\n").map{|line|line.scan(/>(.+)\.{3}\s\*/)}.flatten
  end
  alias :rep_seq :representative

  def size
    entries.size
  end
  alias :length :size

  def entries
    @data.split("\n").map{|line|line.scan(/>(.+)\.{3}/)}
  end
end
