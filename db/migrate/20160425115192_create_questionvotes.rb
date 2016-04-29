class CreateQuestionvotes < ActiveRecord::Migration
	def change
	create_table :questionvotes do |t|
			t.integer :question_id
			t.integer :user_id	
			t.integer :question_vote_count
			t.timestamps
			end	
	end
end


