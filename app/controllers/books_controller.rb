class BooksController < ApplicationController


  # GET /books
  # GET /books.json
  def top
  end

  def index
    @books = Book.all
    @book=Book.new
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @book = Book.find(params[:id])
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book),notice: "successfully post!"
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    book=Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book),notice: "successfully edit!"
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    book=Book.find(params[:id])
    book.destroy
    redirect_to books_path,notice: "successfully destroy!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.s

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :body)
    end
end
