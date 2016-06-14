# Introducing the MediaWiki_table_scraper gem

    require 'mediawiki_table_scraper'

    url = 'https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers'

    a = MediaWikiTableScraper.new(url).to_a

Output (extract):
<pre>
=&gt; [
 {:port=>"0", :tcp=>"N/A", :udp=>"N/A", :description=>"In programming APIs (not in communication between hosts), requests a system-allocated (dynamic) port [3] [4]", :status=>"N/A"},
 {:port=>"0", :tcp=>"", :udp=>"UDP", :description=>"Reserved", :status=>"Official"},
 {:port=>"1", :tcp=>"TCP", :udp=>"UDP", :description=>"TCP Port Service Multiplexer  (TCPMUX)", :status=>"Official"},
 {:port=>"2", :tcp=>"TCP", :udp=>"UDP", :description=>"CompressNET [5]  Management Utility [6]", :status=>"Official"},
 {:port=>"3" ...
</pre>

## Resources

* mediawiki_table_scraper https://rubygems.org/gems/mediawiki_table_scraper

mediawiki wikipedia scraper table
