class CreateQuestions < ActiveRecord::Migration
	def change
	create_table :questions do |t|
			t.integer :user_id
			t.string :question_title
			t.timestamps
			end	
	end
end
