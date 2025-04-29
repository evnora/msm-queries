Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors",         { :controller => "directors", :action => "list"    })
  get("/directors/:the_id", { :controller => "directors", :action => "details" })

  get("/movies",         { :controller => "movies", :action => "list"    })
  get("/movies/:the_id", { :controller => "movies", :action => "details" })

end
