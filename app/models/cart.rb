# class Cart < ApplicationRecord
#   has_many :cart_items

#   def add_song(song_params)

#     current_item = cart_items.find_by(song_id: song_params[:song][:song_id])

#     if current_item
#       current_item.quantity += song_params[:song][:quantity].to_i
#       current_item.save
#     else
#       new_item = cart_items.create(song_id: song_params[:song][:song_id],
#                                   quantity: product_params[:product][:quantity],
#                                   cart_id: self.id)
#     end
#     new_item
#   end
# end