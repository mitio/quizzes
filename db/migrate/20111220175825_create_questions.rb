class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.integer :position
      t.integer :quiz_id

      t.timestamps
    end

    add_index :questions, [:quiz_id, :position]
  end
end
