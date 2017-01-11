class CreateMember < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.text :comments
      
      t.timestamps
    end
  end
end