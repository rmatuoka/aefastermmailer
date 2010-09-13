class ClickController < ApplicationController
  def index
    if !params[:sent].blank?
      if !params[:l].blank?
        @Sent = Sent.find(params[:sent])
        @Sent.clicked = 1
        @Sent.save
        
        redirect_to params[:l]
      end  
    end
  end
end
