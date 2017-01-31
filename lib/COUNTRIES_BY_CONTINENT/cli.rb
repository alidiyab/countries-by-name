#!/usr/bin/env ruby
class COUNTRIESBYCONTINENT::Cli
def call
  puts "ــــــــــــــــــــــــــــــــــــــــ"
  puts "   *WELCOME TO COUNTRIES_BY_CONTINENT*      "
  puts "ــــــــــــــــــــــــــــــــــــــــ"
  list_countinent
  open_country
end
def list_countinent
  html=open('https://www.countries-ofthe-world.com/countries-of-asia.html')
  puts html
  doc=Nokogiri::HTML(html)
  doc.css(".Countries by continent span").each do |e|
    puts e.text
  end
end
  def self.open_country(html)
        doc = Nokogiri::HTML(open(html))
  end
 end
