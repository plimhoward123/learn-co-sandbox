require 'nokogiri'
require 'open-uri'

class Scraper

  def get_page
    doc = Nokogiri::HTML(open("https://www.coursereport.com/best-online-bootcamps"))
    doc
  end

  def scrape_data
    self.doc.css(".school-li").each do |element|
      puts element
    end
  end

end
