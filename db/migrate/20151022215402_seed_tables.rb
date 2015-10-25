class SeedTables < ActiveRecord::Migration
  def change
    Beginning.create(phrase: "I was late", category: "late")
    Beginning.create(phrase: "Sorry I didn't show", category: "absent")
    Beginning.create(phrase: "I dont have it", category: "dont_have_it")
    Beginning.create(phrase: "I dont want to", category: "dont_want_to")
    Middle.create(phrase: "there was a jewish barista workshop")
    Middle.create(phrase: "the scientific research papers were stolen")
    Middle.create(phrase: "the brain surgery I had earlier was botched")
    Final.create(phrase: "I spent too much time tripping on my shoes.")
    Final.create(phrase: "I used my axe guitar.")
    Final.create(phrase: "I punched it.")
    Middle.create(phrase: "I saw a robbery happening nearby")
    Middle.create(phrase: "there was a car accident near me")
    Middle.create(phrase: "a sparkly fairy appeared next to me out of nowhere")
    Middle.create(phrase: "Gandalf was walking towards me with his staff raised high")
    Middle.create(phrase: "Ninja Turtles called and said they needed my help")
    Middle.create(phrase: "my cousin's neighbour's grandparent's nephew's eldest daughter's pet turtle died")
    Middle.create(phrase: "there was a sketchy figure poking around near Lighthouse Labs")
    Middle.create(phrase: "an alien ship descended near me")
    Middle.create(phrase: "it was pouring rain near my house")
    Middle.create(phrase: "...errr...yaa...something something...")
    Final.create(phrase: "I did a German suplex on it.")
    Final.create(phrase: "I turned around to continue sleeping on my comfy bed")
    Final.create(phrase: "I opened the wardrobe and stepped into Narnia.")
    Final.create(phrase: "I slept for the entire day.")
  end
end


