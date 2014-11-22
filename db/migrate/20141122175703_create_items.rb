class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.text :description
      t.text :iso_9999_v2011_category
      t.text :solves_problem
      t.text :associated_diagnosis
      t.text :seller

      t.timestamps
    end
  end
end
