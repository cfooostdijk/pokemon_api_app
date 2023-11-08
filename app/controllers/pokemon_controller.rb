class PokemonController < ApplicationController
  def index
    pokemon = params[:pokemon]
    @pokemon = ::PokeService.call_for_a_pokemon(pokemon)
  end
end
