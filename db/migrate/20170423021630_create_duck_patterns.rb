class CreateDuckPatterns < ActiveRecord::Migration[5.0]
  def change
    create_table :duck_patterns do |t|
      t.string :url
      t.boolean :duck

      t.timestamps
    end
  end
end
