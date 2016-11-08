class CreateBeer < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :description
    end
    add_index(:beers,:name)
  end
end
