Rails.application.routes.draw do

  post "/to/native/cruby/ast", to: "translator#post_handler"

end