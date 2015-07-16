class WikiController < ApplicationController
  def index
  	@wikis = Wiki.where(hidden: false)
  	@wikisPrivate = Wiki.where(hidden: true)
  end

  def create
  end
  
  def new
  end

  def show
  end

  def edit
  end

  def destroy
    @wiki = Wiki.find(params[:id])
    @wiki.destroy
    redirect_to wiki_index_path
  end
end
