class ChannelsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @channels = Channel.page(params[:page]).per(3)
    respond_to do |format|
      format.html
      format.json { render :json => @channels }
    end
  end
  
  def show
    @channel = Channel.find(params[:id])
  end
  
  def new
    @channel = Channel.new
  end 

  def create
    @channel = Channel.new(params[:channel])
    if @channel.save
      redirect_to channels_url
    else
      render :action => :new
    end
  end
  
  def edit
    @channel = Channel.find(params[:id])
  end
  
  def update
    @channel = Channel.find(params[:id])
    @channel.update_attributes(params[:channel])
    redirect_to channel_url(@channel)
  end

  def destroy
    @channel = Channel.find(params[:id])
    @channel.destroy
    redirect_to channels_url
  end
  
end
