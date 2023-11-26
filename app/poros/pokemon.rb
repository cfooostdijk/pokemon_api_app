class Pokemon
  attr_reader :name, :height, :weight, :base_experience, :image

  def initialize(data)
    @name = data.dig('name')&.capitalize
    @height = data.dig('height')
    @weight = data.dig('weight')
    @base_experience = data.dig('base_experience')
    @image = data.dig('sprites', 'front_default')
  end
end
