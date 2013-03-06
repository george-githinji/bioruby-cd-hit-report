
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

  def get_seqs(file)
    seqs = Bio::FlatFile.auto(file).map{ |f| f}
    puts entries.map{|entry| seqs.select {|seq| seq.definition == entry }}
  end

  private
  def entries
    data.map {|entry| entry.scan(/>(.+)\.{3}/)}.flatten
  end

end

