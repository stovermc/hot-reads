class CreateHotReadsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :hot_reads do |t|
      t.string :url
      t.integer :count

      t.timestamps null: false
    end
  end
end
