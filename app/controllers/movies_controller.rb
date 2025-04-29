class MoviesController < ApplicationController
  def list
    @list_of_movies = Movie.all
    render({ :template => "movie_templates/list" })
  end

  def details
    the_id = params.fetch("the_id")
    matching_movies = Movie.where({ :id => the_id })
    @the_movie = matching_movies.at(0)

    matching_directors = Director.where({ :id => @the_movie.director_id })
    @the_director = matching_directors.at(0)

    render({ :template => "movie_templates/details" })
  end
end
