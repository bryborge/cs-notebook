# frozen_string_literal: true

################################################################################
# Abstract superclass

class AbstractRecipe
  # The template method defining the skeleton of the algorithm
  def prepare_recipe
    before_prepare
    gather_ingredients
    prepare_ingredients
    cook
    serve
    clean_up
    after_prepare
  end

  # Abstract methods to be implemented by subclasses ---------------------------

  def gather_ingredients
    raise NotImplementedError, 'You must implement the gather_ingredients method'
  end

  def prepare_ingredients
    raise NotImplementedError, 'You must implement the prepare_ingredients method'
  end

  def cook
    raise NotImplementedError, 'You must implement the cook method'
  end

  def serve
    raise NotImplementedError, 'You must implement the serve method'
  end

  # Concrete methods -----------------------------------------------------------

  def clean_up
    puts 'Cleaning up the kitchen.'
  end

  # Hooks (Optional) -----------------------------------------------------------

  def before_prepare; end

  def after_prepare; end
end

################################################################################
# Concrete subclasses

class PastaRecipe < AbstractRecipe
  def gather_ingredients
    puts 'Gathering ingredients for pasta: pasta, tomatoes, garlic, olive oil, salt, and pepper.'
  end

  def prepare_ingredients
    puts 'Chopping tomatoes and garlic.'
  end

  def cook
    puts 'Boiling pasta and cooking tomatoes and garlic in olive oil.'
  end

  def serve
    puts 'Plating pasta and pouring sauce on top.'
  end

  # Optionally override the hooks
  def before_prepare
    puts 'Putting on an apron before preparing pasta.'
  end

  def after_prepare
    puts 'Enjoying a glass of wine after serving pasta.'
  end
end

class SaladRecipe < AbstractRecipe
  def gather_ingredients
    puts 'Gathering ingredients for salad: lettuce, tomatoes, cucumbers, onions, olive oil, and vinegar.'
  end

  def prepare_ingredients
    puts 'Chopping lettuce, tomatoes, cucumbers, and onions.'
  end

  def cook
    puts 'Mixing all ingredients together.'
  end

  def serve
    puts 'Serving salad in a bowl.'
  end

  # Optionally override the hooks
  def before_prepare
    puts 'Washing hands before preparing salad.'
  end
end

################################################################################
# Example Usage

pasta = PastaRecipe.new
pasta.prepare_recipe

puts "\n"

salad = SaladRecipe.new
salad.prepare_recipe
