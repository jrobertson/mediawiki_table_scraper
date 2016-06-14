#!/usr/bin/env ruby

# file: mediawiki_table_scraper.rb


require 'nokorexi'


class MediaWikiTableScraper

  attr_reader :tables

  def initialize(url)

    doc = Nokorexi.new(url).to_doc

    tables = doc.root.css('.wikitable')
    # Fetch the records as an array of hash records for each table

    @tables = tables.map do |table|

      rows = table.xpath 'tr'

      # fetch the column names
      labels = rows.shift.xpath 'th/text()'
      names = labels.map {|x| x.downcase.to_sym }

      a = rows.map do |row| 

        row.xpath('td').map do |x|

          if x.has_elements? then

            x.children.map do |c| 
              c.is_a?(String) ? c : c.xml.gsub(/<\/?\w+[^>]*>/,'')
            end.join ' '

          else
            x.text.to_s
          end

        end

      end

      a2 = a.map {|rows| names.zip(rows).to_h }

    end
  end

  def to_a()
    @tables
  end

end

