class BooksController < ApplicationController

  def index #Books
    @books = Book.all
   	@book = Book.new
  end

  def create
	@book = Book.new(book_params)
    if @book.save
       flash[:notice] = "Book was successfully created."
  	   redirect_to books_path
    else
      @books = Book.all.order(created_at: :desc)
      render ("index")
    end
  end
  def show
  end

  def new
  end

  def edit
  end

  def update
  end


  def destroy
    @books = Book.find(params[:id])
    @books.destroy
    redirect_to books_path
    flash[:notice] = "Book was successfully destroyed."

  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
