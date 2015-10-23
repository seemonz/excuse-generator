class AddMorePhrases < ActiveRecord::Migration
  def change
    Beginning.create(phrase: "I wasn't very punctual", category: "late")
    Beginning.create(phrase: "I guess I didn't appear", category: "absent")
    Beginning.create(phrase: "I didn't bring what you wanted", category: "dont_have_it")
    Beginning.create(phrase: "It doesn't seem appealing", category: "dont_want_to")
    Middle.create(phrase: "I was at the library and lost track of time")
    Middle.create(phrase: "the scientific research papers were stolen")
    Middle.create(phrase: "I choked on my bubble tea")
    Final.create(phrase: "I retaliated")
    Final.create(phrase: "I puked.")
    Final.create(phrase: "I died.")
    Final.create(phrase: "I cried.")
  end
end
