class ChangeVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :title
      t.text :description
      
      t.timestamps
    end
    
    change_table :videos do |t|
      t.integer :section_id
    end
  end
end
