class PokeFacade
  class << self
    def get_a_pokemon(pokemon)
      data = PokeService.call_for_a_pokemon(pokemon)
      poki = Pokemon.new(data)
      Poki.find_or_create_pokemon(poki)
    end
  end
end
