class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.float :score_one
      t.float :score_two
      t.float :score_three
      t.float :score_four
      t.float :score_test
      t.float :score_final
      t.belongs_to :subject
      t.belongs_to :student

      t.timestamps
    end
  end
end
