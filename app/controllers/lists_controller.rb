class ListsController < ApplicationController
  def index
    @lists = List.all
    render('lists/index.html.erb')
  end

  def show
    @list = List.find(params[:id])
    render('lists/show.html.erb')
  end

  def new
    render('lists/new.html.erb')
  end

  def create
    @list = List.create(:name => params[:name])
    render('lists/success.html.erb')
  end
end
