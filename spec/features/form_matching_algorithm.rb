require "spec_helper"

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
end