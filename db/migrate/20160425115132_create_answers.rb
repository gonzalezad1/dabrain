class CreateAnswers < ActiveRecord::Migration
	def change
	create_table :answers do |t|
		    t.integer :user_id
		    t.integer :question_id
			t.string :answer_body	
			t.timestamps
			end	
	end
end
