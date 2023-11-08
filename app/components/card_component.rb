# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(pokemon)
    @pokemon = pokemon
  end
end
