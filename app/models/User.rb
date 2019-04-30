class User


  @@all = []

  def initialize(user)
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date, rating, self, recipe)
  end


  def recipes
    RecipeCard.all.select {|recipe| recipe.user == self}
  end

  def top_three_recipes
    user_ratings = RecipeCard.all.select {|card| card.rating}
    binding.pry
    user_ratings.sort_by(&:rating)[-3,,-1]
  end

  def most_recent_recipe
    most_recent = RecipeCard.all[-1]
    most_recent.recipe
  end

  def declare_allergy(ingredient)
    Allergy.new(ingredient, self)
  end

  def allergens
    Allergy.all.select {|allergy| allergy.user == self}
  end

end
