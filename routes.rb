Rails.application.routes.draw do

  get  "/translator", to: "translator#get_handler"
  post "/translator", to: "translator#post_handler"

end