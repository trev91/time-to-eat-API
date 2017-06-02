class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.string :answer
      t.string :keyword

      t.timestamps
    end
  end
end
