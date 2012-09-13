# bio-cd-hit-report

[![Build Status](https://secure.travis-ci.org/georgeG/bioruby-cd-hit-report.png)](http://travis-ci.org/georgeG/bioruby-cd-hit-report)

Full description goes here

Note: this software is under active development!

## Installation

```sh
    gem install bio-cd-hit-report
```

## Usage

```ruby
  require 'bio-cd-hit-report'
   
   cluster_file = "#{ENV['HOME']}/cd-hit/cluster95.clstr"

    report = Bio::CdHitReport.new(cluster_file)
      puts report.most_members
      puts report.least_members

    report.each_cluster do |c|
      puts c.list_members
      puts "#{c.number}-#{c.size}"
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

Copyright (c) 2012 georgeG. See LICENSE.txt for further details.

