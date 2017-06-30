class CreateAgencies < ActiveRecord::Migration[5.1]
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :logo
      t.string :code

      t.timestamps
    end
  end
end
