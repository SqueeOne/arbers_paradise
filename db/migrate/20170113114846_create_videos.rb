class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :name
      t.text :synopsis
      t.text :full_text
      t.references :plan
      
      t.timestamps
    end
  end
end
