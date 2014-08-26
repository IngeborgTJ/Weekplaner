class CreateWeekplans < ActiveRecord::Migration
  def change
    create_table :weekplans do |t|
      t.string :week
      t.string :plan

      t.timestamps
    end
  end
end
