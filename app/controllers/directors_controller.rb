class DirectorsController < ApplicationController
  def list
    @list_of_directors = Director.all
    render({ :template => "director_templates/list" })
  end

  def details
    the_id = params.fetch("the_id")
    matching_directors = Director.where({ :id => the_id })
    @the_director = matching_directors.at(0)

    matching_movies = Movie.where({ :director_id => @the_director.id })
    @list_of_movies = matching_movies

    render({ :template => "director_templates/details" })
  end
end
