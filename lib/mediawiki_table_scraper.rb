#!/usr/bin/env ruby

# file: mediawiki_table_scraper.rb


require 'nokorexi'


class MediaWikiTableScraper

  attr_reader :tables


  def initialize(url)

    doc = Nokorexi.new(url).to_doc

    tables = doc.root.css('.wikitable')

    # Fetch the records as an array of hash records for each table

    @tables = tables.map.with_index do |table, i|

      puts 'i: ' + i.inspect

      rows = table.xpath 'tbody/tr'

      # fetch the column names
      labels = rows.shift.xpath 'th/text()'
      names = labels.map {|x| x.chomp.downcase.to_sym }

      a = rows.map do |row|

        row.xpath('td').map do |col|

          if col.has_elements? then

            col.children.map do |c|
              c.is_a?(String) ? c : c.xml.gsub(/<\/?\w+[^>]*>/,'')
            end.join ' '

          else
            col.text.to_s
          end

        end

      end

      a.map {|rows| names.zip(rows).to_h }

    end
  end

  def to_a()
    @tables
  end

end
