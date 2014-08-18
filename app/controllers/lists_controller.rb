class ListsController < ApplicationController
  def index
    @lists = List.all
    @complete = List.done
    @not_complete = List.not_done
    render('lists/index.html.erb')
  end

  def show
    @list = List.find(params[:id])
    render('lists/show.html.erb')
  end

  def new
    @list = List.new
    render('lists/new.html.erb')
  end

  def create
    @list = List.create(params[:list])
    if @list.save
      render('lists/success.html.erb')
    else
      render('lists/new.html.erb')
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    render('lists/destroy.html.erb')
  end

  def update
    @list = List.find(params[:id])
    @list.update(params[:list])
  end
end
