class SeedTables < ActiveRecord::Migration
  def change
    Beginning.create(phrase: "I'm was late", category: "late")
    Beginning.create(phrase: "Sorry I didn't show", category: "absent")
    Beginning.create(phrase: "I dont have it", category: "dont_have_it")
    Beginning.create(phrase: "I dont want to", category: "dont_want_to")
    Middle.create(phrase: "there was a jewish barista workshop")
    Middle.create(phrase: "the scientific research papers were stolen")
    Middle.create(phrase: "the brain surgery I had earlier")
    Final.create(phrase: "I spent too much time tripping on my shoes.")
    Final.create(phrase: "I used my axe guitar as a remote control.")
    Final.create(phrase: "I punched it.")
  end
end
