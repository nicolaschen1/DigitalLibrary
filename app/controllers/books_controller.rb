# app/controllers/books_controller.rb
class BooksController < ApplicationController
  def index
    @books = Book.page(1)
    @categories = Category.all
  end

  def create
    Book.create title: params[:title], category_id: params[:category_id]
    redirect_to "/books"
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
    Book.find(params[:id]).update title: params[:title]
    redirect_to "/books/#{params[:id]}"
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end
end

