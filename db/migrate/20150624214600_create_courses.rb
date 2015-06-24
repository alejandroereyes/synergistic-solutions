class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :start_date
      t.integer :max_enrollment
      t.belongs_to :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
