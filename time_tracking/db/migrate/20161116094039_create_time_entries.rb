class CreateTimeEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :time_entries do |t|
      t.references  :project, index: true # las columnas de relación se crean como índices para que el funcionamiento sea más rápido
      t.integer     :hours
      t.integer     :minutes
      t.text        :comments
      t.datetime    :date
      t.timestamps
    end
  end
end
