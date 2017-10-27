Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers, :pokemons
  patch 'roast' , to: "pokemons#damage" , as: 'damage'
  patch '/' , to: "pokemons#capture" , as: 'capture'
  get 'pokemons/new', to: "pokemons#new", as: 'new'
  post 'pokemonsCreate', to: "pokemons#create", as: 'createPokemon'
end
