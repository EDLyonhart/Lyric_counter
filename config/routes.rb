Rails.application.routes.draw do

  root 'genres#index'

  resources :genres
    resources :artists
      resources :songs

end


#      Prefix Verb   URI Pattern                 Controller#Action
#        root GET    /                           genres#index
#      genres GET    /genres(.:format)           genres#index
#             POST   /genres(.:format)           genres#create
#   new_genre GET    /genres/new(.:format)       genres#new
#  edit_genre GET    /genres/:id/edit(.:format)  genres#edit
#       genre GET    /genres/:id(.:format)       genres#show
#             PATCH  /genres/:id(.:format)       genres#update
#             PUT    /genres/:id(.:format)       genres#update
#             DELETE /genres/:id(.:format)       genres#destroy
#     artists GET    /artists(.:format)          artists#index
#             POST   /artists(.:format)          artists#create
#  new_artist GET    /artists/new(.:format)      artists#new
# edit_artist GET    /artists/:id/edit(.:format) artists#edit
#      artist GET    /artists/:id(.:format)      artists#show
#             PATCH  /artists/:id(.:format)      artists#update
#             PUT    /artists/:id(.:format)      artists#update
#             DELETE /artists/:id(.:format)      artists#destroy
#       songs GET    /songs(.:format)            songs#index
#             POST   /songs(.:format)            songs#create
#    new_song GET    /songs/new(.:format)        songs#new
#   edit_song GET    /songs/:id/edit(.:format)   songs#edit
#        song GET    /songs/:id(.:format)        songs#show
#             PATCH  /songs/:id(.:format)        songs#update
#             PUT    /songs/:id(.:format)        songs#update
#             DELETE /songs/:id(.:format)        songs#destroy
