Rails.application.routes.draw do
  devise_for :users
  resources :articles, :lecture, :admin, :dashboard, :learn, :question, :quiz, :quizzes
  #Progress Tracker
  get '/progress/add/:learn_id/:user_id/:lecture_id' => 'progress#add'

  #Admin Routes
  get '/destroy/:id' => 'admin#destroy'
  get '/make_admin/:id' => 'admin#make_admin'
  get '/unmake_admin/:id' => 'admin#unmake_admin'
  get '/admin/manage' => 'admin#manage'
  get '/dashboard/progress' => 'dashboard#progress'

  #Article Routes
  root 'articles#landing'
  get '/search' => 'articles#search'
  get '/new' => 'articles#new'
  #Learn Routes and Lectures
  get '/learn/:id/add_lecture' => 'learn#add_lecture'
  get '/learn/:id/lecture/:lid' => 'learn#lecture_show'
  get '/learn/:id/lecture/:lid/edit' => 'learn#lecture_edit'
  post '/learn/:id/create_lecture' => 'learn#create_lecture'
  get '/admin' => 'admin#index', as: :admin_path
  delete '/learn/:id/lecture/:lid' => 'learn#lecture_destroy'
  get '/add/course/:learn_id' => 'course#add'

  #Quiz Routes

  get '/learn/:id/quiz/new' => 'quiz#new', as: :quizzes_path
  get '/learn/:id/quiz' => 'quiz#show', as: :take_quiz_path

end
