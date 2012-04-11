class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
