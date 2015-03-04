require 'open-uri'
require 'nokogiri'

@url="http://www.suesnydeli.com/?_escaped_fragment_=daily-specials/ccf6"

def poll
  uri=open @url
  doc = Nokogiri::HTML(uri)
  
  special=doc.xpath('//*[@id="hxxky9l6"]/p[13]/font').text
end 
