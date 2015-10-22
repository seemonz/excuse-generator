class BasicTables < ActiveRecord::Migration
  def change
    create_table :excuses do |t|
      t.references :beginnings 
      t.references :middles
      t.references :finals
      t.index([:beginnings_id, :middles_id, :finals_id], unique: true)
      t.timestamps 
    end

    create_table :beginnings do |t|
      t.string :phrase, unique: true
      t.string :category
      t.timestamps
    end

    create_table :middles do |t|
      t.string :phrase,  unique: true
      t.timestamps
    end
    create_table :finals do |t|
      t.string :phrase,  unique: true
      t.timestamps
    end
  end

end
