class BooksController < BlocWorks::Controller
  def welcome
    @book = "Eloquent Ruby"
    render :welcome, some_other_book: "Algorithms"
  end

  def show
    @library = "Books Library"
    @book = "Eloquent Ruby"
    render :show
  end

  def new
    render :new
  end

  def create
    render :create
  end

  def edit
    render :edit
  end

  def update
    render :update
  end

  def destroy
    render :destroy
  end
end
