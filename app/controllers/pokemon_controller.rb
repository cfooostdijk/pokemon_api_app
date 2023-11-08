class PokemonController < ApplicationController
  def index
    pokemon = params[:pokemon]
    data= ::PokeService.call_for_a_pokemon(pokemon)
    @pokemon = Pokemon.new(data)
  end
end
