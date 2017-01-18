class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references  :user, index: true
      t.string      :title
      t.text        :description
      t.date        :deadline
      t.timestamps
    end
  end
end
