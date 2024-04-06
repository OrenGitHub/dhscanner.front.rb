Rails.application.routes.draw do

  post "/translator1", to: "translator#post_handler_simple"
  post "/translator2", to: "translator#post_handler"

end