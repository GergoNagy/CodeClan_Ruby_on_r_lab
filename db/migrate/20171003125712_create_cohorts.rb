class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.integer :number
      t.references :codeclan, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
