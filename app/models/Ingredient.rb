class Ingredient

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end


  def self.most_common_allergen
    allergen_array = Allergy.all.map{|user| user.indgredient}
    allergen_array.group_by(&:to_s).values.max_by(&:size).uniq
  end


end
