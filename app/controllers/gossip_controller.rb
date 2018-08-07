class GossipController < ApplicationController
  def new
    @gossip = Gossip.new
  end

  def create
    a = Gossip.new
    a.content = params[:gossip][:content]
    a.anonymous_user = current_user.anonymous_user
    a.user_id = current_user.id
    a.save
    redirect_to root_path
  end

  def destroy
    gos = Gossip.find(params[:id])
    gos.delete
    redirect_to root_path
  end

  
end
