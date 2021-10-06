class BooksController < ApplicationController
  
  def index
    @books = Book.all
    @book = Book.new #空のモデルを生成。インスタンス変数@bookに代入してview利用可能
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    book = Book.new(book_params)
    if book.save
      flash[:notice] = 'Book was successfully'
      redirect_to book_path(book)
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      flash[:notice] = 'Book was successfully updated'
      redirect_to book_path
    else
      render :new
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end