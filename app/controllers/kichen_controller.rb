class KichenController < ApplicationController
    
    def pot
    end
    
    def stoll
        mug = Cup.new
        mug.dbstring = params[:user_string]
        mug.dbint = params[:user_int]
        mug.save
        @output = Cup.all
    end
    
end
