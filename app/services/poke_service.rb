class PokeService
  include Http::Wrapper::Client

  API_ENDPOINT = 'https://pokeapi.co/api/v2/pokemon/'

  def initialize
    @connection = connection(
      API_ENDPOINT,
      { 'Content-Type' => 'application/json' }
    )
  end

  def call_for_a_pokemon(pokemon)
    request(
      connection: @connection,
      http_method: :get,
      endpoint: "#{pokemon.downcase}",
      params_type: :query
    )
  end
end
