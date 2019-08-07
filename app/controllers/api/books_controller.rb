class Api::BooksController < ApplicationController
  def index
    @books = Book.all
    render 'index.json.jb'
  end

  def create
    @book = Book.new(title: params[:title], pages: params[:pages])
    @book.save
    render 'show.json.jb'
  end
end
