# bio-cd-hit-report

[![Build Status](https://secure.travis-ci.org/georgeG/bioruby-cd-hit-report.png)](http://travis-ci.org/georgeG/bioruby-cd-hit-report)

A bioruby wrapper for parsing and reading CD-HIT cluster reports

Note: this software is under active development!

## Installation

```sh
    gem install bio-cd-hit-report
```

## Usage

```ruby
  require 'bio-cd-hit-report'
   
   cluster_file = "cluster95.clstr"
    report = Bio::CdHitReport.new(cluster_file)

      #print the max number of sequences in a cluster for the entire dataset
      puts report.max_members 

      #print the minimum number of sequences in a cluster for the entire dataset
      puts report.min_members 
      
      #print total number of clusters in the report
      puts report.total_clusters  

      #print the cluster members for cluster with id 1
      puts report.get_cluster(1)

      #information for each cluster
      report.each_cluster do |c|
        puts "#{c.name} - #{c.members}" #print cluster name/id with respective sequences in the cluster
        puts c.size #print the total number of entries in the cluster
      end
```

The API doc is online. For more code examples see the test files in
the source tree.
        
## Project home page

Information on the source tree, documentation, examples, issues and
how to contribute, see

  http://github.com/georgeG/bioruby-cd-hit-report

The BioRuby community is on IRC server: irc.freenode.org, channel: #bioruby.

## Cite

If you use this software, please cite one of
  
* [BioRuby: bioinformatics software for the Ruby programming language](http://dx.doi.org/10.1093/bioinformatics/btq475)
* [Biogem: an effective tool-based approach for scaling up open source software development in bioinformatics](http://dx.doi.org/10.1093/bioinformatics/bts080)

## Biogems.info

This Biogem is published at [#bio-cd-hit-report](http://biogems.info/index.html)

## Copyright

Copyright (c) 2012 George Githinji. See LICENSE.txt for further details.
