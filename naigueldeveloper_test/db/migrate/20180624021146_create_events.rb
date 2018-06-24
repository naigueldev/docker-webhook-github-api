class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :id_issue
      t.string :action
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end
