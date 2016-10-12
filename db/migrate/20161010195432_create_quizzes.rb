class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.references :learn
      t.string :title

      t.timestamps null: false
    end
  end
end
