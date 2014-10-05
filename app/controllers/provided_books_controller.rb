class ProvidedBooksController < ApplicationController
  before_action :set_provided_book, only: [:show, :edit, :update, :destroy]

  # GET /provided_books
  # GET /provided_books.json
  def index
    @my_amazon_elements = ProvidedBook.all
  end

  # GET /provided_books/1
  # GET /provided_books/1.json
  def show
  end

  # GET /provided_books/new
  def new
    @provided_book = ProvidedBook.new
  end

  # GET /provided_books/1/edit
  def edit
  end

  # POST /provided_books
  # POST /provided_books.json
  def create
    @provided_book = ProvidedBook.new({:title => params['title'], :auther => params['auther'],
      :isbn => params['isbn'], :image_url => params['image_url'], :associate_url => params['associate_url']})

    respond_to do |format|
      if @provided_book.save
        format.html { redirect_to @provided_book, notice: 'Provided book was successfully created.' }
        format.json { render :show, status: :created, location: @provided_book }
      else
        format.html { render :new }
        format.json { render json: @provided_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /provided_books/1
  # PATCH/PUT /provided_books/1.json
  def update
    respond_to do |format|
      if @provided_book.update(provided_book_params)
        format.html { redirect_to @provided_book, notice: 'Provided book was successfully updated.' }
        format.json { render :show, status: :ok, location: @provided_book }
      else
        format.html { render :edit }
        format.json { render json: @provided_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provided_books/1
  # DELETE /provided_books/1.json
  def destroy
    @provided_book.destroy
    respond_to do |format|
      format.html { redirect_to provided_books_url, notice: 'Provided book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provided_book
      @provided_book = ProvidedBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provided_book_params
      params.require(:provided_book).permit(:title, :auther, :isbn, :image_url, :associate_url)
    end
end
