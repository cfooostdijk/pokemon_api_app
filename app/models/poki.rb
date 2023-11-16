class Poki < ApplicationRecord
  validates_presence_of :name, :height, :weight, :base_experience, :image

  class << self
    def find_or_create_pokemon(poki)
      find_or_initialize_by(
        name: poki.name,
        height: poki.height,
        weight: poki.weight,
        base_experience: poki.base_experience,
        image: poki.image
      ).tap do |pokemon|
        pokemon.save! if pokemon.new_record?
      end
    end
  end
end
