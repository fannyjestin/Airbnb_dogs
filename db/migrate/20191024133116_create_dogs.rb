class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :first_name
      t.belongs_to :city , optional: true
      t.timestamps
    end
  end
end
