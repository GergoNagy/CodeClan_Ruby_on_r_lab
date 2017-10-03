class CreateCodeClans < ActiveRecord::Migration
  def change
    create_table :code_clans do |t|
      t.string :location

      t.timestamps null: false
    end
  end
end
