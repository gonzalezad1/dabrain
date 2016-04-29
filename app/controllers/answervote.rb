post '/+1/:question_id/:answer_id' do
@answer_upvote = Answervote.create(user_id: session[:user_id], answer_id: params[:answer_id], answer_vote_count: +1)
redirect "/question/#{params[:question_id]}"
end

post '/-1/:question_id/:answer_id' do
@answer_upvote = Answervote.create(user_id: session[:user_id], answer_id: params[:answer_id], answer_vote_count: -1)
redirect "/question/#{params[:question_id]}"
end