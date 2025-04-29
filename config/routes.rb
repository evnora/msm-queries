Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors",          { :controller => "directors", :action => "list"    })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest",   { :controller => "directors", :action => "eldest"   })
  get("/directors/:the_id",  { :controller => "directors", :action => "details" })

  get("/movies",         { :controller => "movies", :action => "list"    })
  get("/movies/:the_id", { :controller => "movies", :action => "details" })

  get("/actors",         { :controller => "actors", :action => "list"    })
  get("/actors/:the_id", { :controller => "actors", :action => "details" })


end
