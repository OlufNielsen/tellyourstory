Tellyourstory::Application.routes.draw do
  root :to            => "stories#all"
  match '/story/:id'  => "stories#show",  :as => "show_story"
  match '/:slug'      => "stories#slug",  :as => "show_stories_by_slug"

  devise_for :users
end
