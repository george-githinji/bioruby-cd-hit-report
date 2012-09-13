require_relative "bio-cd-hit-report/cd-hit-report"

cluster_file = "#{ENV['HOME']}/DBL_tags/cluster/cd-hit/cluster95.clstr"

report = Bio::CdHitReport.new(cluster_file)

report.each_cluster do |c|
  #puts c.list_members
  puts c.size
end


