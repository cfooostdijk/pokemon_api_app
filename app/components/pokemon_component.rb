# frozen_string_literal: true

class PokemonComponent < ViewComponent::Base
  def initialize(pokemon)
    @pokemon = pokemon
  end
end
