class TopicController < ApplicationController
  def new
    render:new
  end
  
  def create
    redirect_to'topic/new'
  end
  
  def edit
    render:edit
  end
  
  def update
    redirect_to'topic/edit'
  end
  
end
