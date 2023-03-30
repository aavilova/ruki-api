class CreateThemes < ActiveRecord::Migration[7.0]
  def create
    create_table :themes do |t|
      t.string :name

      t.timestamps
    end
  end
end
