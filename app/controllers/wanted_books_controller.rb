class WantedBooksController < ApplicationController
  before_action :set_wanted_book, only: [:show, :edit, :update, :destroy]

  # GET /wanted_books
  # GET /wanted_books.json
  def index
    @wanted_books = WantedBook.all
  end

  # GET /wanted_books/1
  # GET /wanted_books/1.json
  def show
  end

  # GET /wanted_books/new
  def new
    @wanted_book = WantedBook.new
  end

  # GET /wanted_books/1/edit
  def edit
  end

  # POST /wanted_books
  # POST /wanted_books.json
  def create
    @wanted_book = WantedBook.new(wanted_book_params)
    amazon = Amazon::Ecs.item_search(@wanted_book.name, :search_index => 'All', :country => 'jp')
    amazon.items.each do |item|
      puts item.get('DetailPageURL')  # 詳細ページURLを取得
      puts item.get('ItemAttributes/Title')  # 商品タイトルを取得
    end

    respond_to do |format|
      if @wanted_book.save
        format.html { redirect_to @wanted_book, notice: 'Wanted book was successfully created.' }
        format.json { render :show, status: :created, location: @wanted_book }
      else
        format.html { render :new }
        format.json { render json: @wanted_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wanted_books/1
  # PATCH/PUT /wanted_books/1.json
  def update
    respond_to do |format|
      if @wanted_book.update(wanted_book_params)
        format.html { redirect_to @wanted_book, notice: 'Wanted book was successfully updated.' }
        format.json { render :show, status: :ok, location: @wanted_book }
      else
        format.html { render :edit }
        format.json { render json: @wanted_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wanted_books/1
  # DELETE /wanted_books/1.json
  def destroy
    @wanted_book.destroy
    respond_to do |format|
      format.html { redirect_to wanted_books_url, notice: 'Wanted book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wanted_book
      @wanted_book = WantedBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wanted_book_params
      params.require(:wanted_book).permit(:name)
    end
end
