
post "/specific" do

@user_question  = Question.find_by(question_title: params[:specific_question])

if @user_question.present?
	redirect "/specific_question"
else
	redirect "/"
	end

end


get '/question/:question_id' do

erb :"static/specific_question"

end

get '/all_questions' do 

erb :"static/all_questions"

end


post "/question/:question_id/user_answer" do
@user_answer  = Answer.create(answer_body: params[:answer_value], user_id: session[:user_id], question_id: params[:question_id]  )
redirect "/question/#{params[:question_id]}"
end


post '/question/:question_id/:answer_id' do
@answer = Answer.find_by(id: params[:answer_id])
@answer.destroy
redirect "/question/#{params[:question_id]}"
end

post '/new_question' do 
	@user_question_new  = Question.create(question_title: params[:question_value], user_id: session[:user_id])
redirect "/user_interface"
end