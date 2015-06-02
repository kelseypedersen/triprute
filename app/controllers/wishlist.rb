get '/wishlists/:id' do
  @user = User.find(params[:id])
  erb :'wishlists/show'
end


get '/wishlists' do
  @wishlist = current_user.wishlist

  erb :'wishlists/index'
end

post '/wishlists' do
  @wishlist = Wishlist.create(user_id => params[:user_id], trip_id => params[:trip_id])
end