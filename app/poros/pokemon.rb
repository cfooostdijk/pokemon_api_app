class Pokemon
  attr_reader :name, :height, :weight, :base_experience, :image

  def initialize(data)
    @name = data[:name].capitalize
    @height = data[:height]
    @weight = data[:weight]
    @base_experience = data[:base_experience]
    @image = data[:sprites][:front_default]
  end
end
