class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :inquiry
      t.text :answer

      t.timestamps
    end
  end
end
