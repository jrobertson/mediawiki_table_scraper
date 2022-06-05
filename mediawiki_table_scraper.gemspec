Gem::Specification.new do |s|
  s.name = 'mediawiki_table_scraper'
  s.version = '0.2.0'
  s.summary = 'Scrapes the tables from a MediaWiki page.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/mediawiki_table_scraper.rb']
  s.add_runtime_dependency('nokorexi', '~> 0.7', '>=0.7.0')
  s.signing_key = '../privatekeys/mediawiki_table_scraper.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/mediawiki_table_scraper'
end
