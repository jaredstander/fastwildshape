require "spec_helper"

# Make level 4 tests pass, make level 6 tests pass, etc.

# Druid levels and ability milestones:
# Level 4: Small Animal
         # Medium Animal
# Level 6: Tiny Animal
         # Small Animal
         # Medium Animal
         # Large Animal
         # Small Elemental
# Level 8: 
         # Diminutive Animal
         # Small Animal
         # Medium Animal
         # Large Animal
         # Huge Animal
         # Small Elemental
         # Medium Elemental
         # Small Plant
         # Medium Plant
# level 10: 
         # Diminutive Animal
         # Small Animal
         # Medium Animal
         # Large Animal
         # Huge Animal
         # Small Elemental
         # Medium Elemental
         # Large Elemental
         # Small Plant
         # Medium Plant
         # Large Plant
# level 12: 
         # Diminutive Animal
         # Small Animal
         # Medium Animal
         # Large Animal
         # Huge Animal
         # Small Elemental
         # Medium Elemental
         # Large Elemental
         # Huge Elemental
         # Small Plant
         # Medium Plant
         # Large Plant
         # Huge Plant

describe "Get Available Forms" do
  let(character) { create(:character) }
  

  # Tests. Based on a full character class, generate available forms and sizes.
  # Have records for combinations as above?

  # todo: Populate a table in the test DB with about 2-3 forms from each category.
  # When testing, what forms are returned can be used to test the matching.

  # So, in the character table we'll have:
  # "animal_sizes" containing data like "small, medium"
  # The data can be split into an array and a do each can pull each animal with the corresponding sizes.
  # ie: we'll get animal_sizes = ["small", "medium"]
  # For each animal_sizes, find all records where type = animal and size = small or medium.

  # To cut load times, these associations can be stores as a favourite-like join table,
  # since available forms won't change unless the character levels up, at which time,
  # the algorithm can go to town and add any additional matches.
end