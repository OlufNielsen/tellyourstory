class StoriesController < ApplicationController
  def all
    @stories  = Story.all
    @tags     = Tag.all
  end

  def show
    @story    = Story.find(params[:id])
  end
  
  def slug
    @tag      = Tag.find_by_slug(params[:slug])
    @stories  = @tag.stories
    @tags     = Tag.all
  end

end
