class PokemonsController < ApplicationController
  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.trainer_id = current_trainer.id
		pokemon.save

		redirect_to root_path
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    pokemon.health -= 10
		pokemon.save

    if pokemon.health <= 0
      pokemon.delete
    end

		redirect_to trainer_path(current_trainer)
  end

  def new
  end

  def create
    params.permit(:name, :ndex)
    @pokemon = Pokemon.new()
		@pokemon.name = params[:pokemon][:name]
    @pokemon.ndex = params[:pokemon][:ndex]
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer_id = current_trainer.id
    if @pokemon.save
      redirect_to trainer_path(current_trainer)
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_path
    end
  end

end
