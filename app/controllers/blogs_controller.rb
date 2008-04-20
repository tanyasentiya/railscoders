class BlogsController < ApplicationController
  def index
    @entries = Entry.paginate(:page => params[:page],                        
                          :order => 'entries.created_at DESC', 
                          :include => :user)
  end
end
