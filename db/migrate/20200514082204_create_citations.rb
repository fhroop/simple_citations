class CreateCitations < ActiveRecord::Migration[5.2]
  def change
    create_table :citations do |t|
      t.string :user
      t.text :content

      t.timestamps
    end
  end
end
