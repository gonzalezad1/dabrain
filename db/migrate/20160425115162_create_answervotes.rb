class CreateAnswervotes < ActiveRecord::Migration
	def change
	create_table :answervotes do |t|
			t.integer :answer_id
			t.integer :user_id	
			t.integer :answer_vote_count
			t.timestamps
			end	
	end
end


