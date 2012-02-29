Tellyourstory::Application.routes.draw do
  root :to            => "stories#all"
  match '/story/:id'  => "stories#show",  :as => "show_story"

  devise_for :users
end
