class StandController < ApplicationController
    
    def grey
    end
    
    def white
        
        @keyword = params[:keyword]
        @offset = params[:offset].to_i
        @number_of_pages = params[:number_of_pages].to_i
        @count = 0
        @headlines = Array.new
        @uris = Array.new
        
        for index in 0...@number_of_pages
            pageId = @offset+index
            uri = URI("http://osen.mt.co.kr/article/G#{pageId}")
            newspage = Nokogiri::HTML(Net::HTTP.get(uri))
            newsparagraph = newspage.css("div#_article//p").inner_text
            
            if newsparagraph.include? @keyword
                @count += 1
                @headlines << newspage.css("p.obj").inner_text
                @uris << uri
            end
        end
        
    end
    
end
