class CartsController < ApplicationController

  def create
    song = Song.find(params[:song_id])
    session[:cart] ||= Hash.new(0)
    session[:cart][song.id] = session[:cart][song.id].to_i + 1
    binding.pry
    flash[:notice] = "You now have #{session[:cart][song.id]} copy of #{song.title} in your cart."
    redirect_to songs_path
  end

end