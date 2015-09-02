class StacklionController < ApplicationController
    
    def input
        
        @my_hash = Hash.new
        @name_item = Array.new
        @rep_item = Array.new
        
        for i in 1..27
            uri = URI("http://stack.likelion.net/users/#{i}")
            stack_doc = Nokogiri::HTML(Net::HTTP.get(uri))
            name = stack_doc.css("a.c-info-name")
            rep = stack_doc.css("p.c-info-reputation")
            
            name.each do |item|
                @name_item << item.inner_text
                
            end
            rep.each do |item|
                @rep_item << item.inner_text.to_i
            end
        end
        
        for i in 0...@name_item.length
            @my_hash[@name_item[i]] = @rep_item[i]
        end
        
        @my_hash = @my_hash.sort_by { |key, value| value}
        @my_hash.reverse!
        
    end
    
    def output
    end
    
end