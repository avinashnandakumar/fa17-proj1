class PokemonsController < ApplicationController
	def capture 
		myPokemon = Pokemon.find(params[:id])
		myPokemon.trainer_id = current_trainer.id
		myPokemon.save
		redirect_to '/'
	end 
	def damage 
		myPokemon = Pokemon.find(params[:id])
		myPokemon.health = myPokemon.health-10
		myPokemon.save
		if myPokemon.health <= 0
			myPokemon.destroy
		end
		redirect_to trainer_path(myPokemon.trainer)
	end
	def new
		@pokemon = Pokemon.new
	
	end

	def create
		
		newPokemon = Pokemon.new
		newPokemon.name = params[:pokemon][:name]
		newPokemon.health = 100
		newPokemon.level = 1
		newPokemon.trainer = current_trainer
		if newPokemon.save 
			redirect_to trainer_path(newPokemon.trainer)
		else
			flash[:error] = newPokemon.errors.full_messages.to_sentence
			redirect_to new_path
		end

	end 
end