class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :reporter
      t.text :body
      t.references :photo, foreign_key: true

      t.timestamps
    end
  end
end
