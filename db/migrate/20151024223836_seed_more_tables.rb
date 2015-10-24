class SeedMoreTables < ActiveRecord::Migration
  def change
    Beginning.create(phrase: "I'm late", category: "late")
    Beginning.create(phrase: "I was absent", category: "absent")
    Beginning.create(phrase: "I don't have it", category: "dont_have_it")
    Beginning.create(phrase: "I don't want to", category: "dont_want_to")
    Middle.create(phrase: "I dropped a bag of noodles")
    Middle.create(phrase: "I lost my hair piece")
    Middle.create(phrase: "my pizza ran away")
    Final.create(phrase: "I ate a waffle.")
    Final.create(phrase: "my doctor licked my face.")
    Final.create(phrase: "I kicked a dog.")
    Final.create(phrase: "I rubbed hot sauce all over my body.")
  end
end
