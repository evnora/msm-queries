class ActorsController < ApplicationController
  def list
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/list" })
  end

  def details
    the_id = params.fetch("the_id")
    matching_actors = Actor.where({ :id => the_id })
    @the_actor = matching_actors.at(0)

    matching_characters = Character.where({ :actor_id => @the_actor.id })
    @list_of_characters = matching_characters

    render({ :template => "actor_templates/details" })
  end
end
