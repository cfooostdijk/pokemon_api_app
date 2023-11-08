# frozen_string_literal: true

class SearchComponent < ViewComponent::Base
  def initialize(pokemon)
    @pokemon = pokemon
  end
end
