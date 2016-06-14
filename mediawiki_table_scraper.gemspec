Gem::Specification.new do |s|
  s.name = 'mediawiki_table_scraper'
  s.version = '0.1.0'
  s.summary = 'Scrapes the tables from a MediaWiki page.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/mediawiki_table_scraper.rb']
  s.add_runtime_dependency('nokorexi', '~> 0.3', '>=0.3.1')
  s.signing_key = '../privatekeys/mediawiki_table_scraper.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/mediawiki_table_scraper'
end
