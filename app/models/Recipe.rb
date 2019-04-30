class Recipe

  @@all = []

  attr_reader :ingredient

  def initialize(recipe)
    @recipe = recipe
    @ingredient = ingredient
    # @allergens = allergens
    @@all << self
  end

  def self.most_popular
    recipe_array = RecipeCard.all.map{|user| user.recipe}
    recipe_array.group_by(&:to_s).values.max_by(&:size).uniq
  end

  def add_ingredients(ingredients)
    RecipeIngredient.new(ingredients, self)
  end

  def recipe_cards
    RecipeCard.all.select {|card| card.recipe == self}
  end

  def users
    self.recipe_cards.map {|recipe_card| recipe_card.user}
  end

  def self.all
    @@all
  end

  def allergens
    Allergy.all.select {|user| user.ingredient == self.ingredient}
  end

  def ingredients
    RecipeIngredient.all.select {|ingredient| ingredient.recipe == self}
  end



end
