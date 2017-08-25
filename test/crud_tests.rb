require_relative "../config/application"
require "test/unit"
require "rack/test"

# run test using command - bundle exec ruby test/crud_tests.rb
class CrudTests < Test::Unit::TestCase
  include Rack::Test::Methods
  def app
    BlocBooks::Application.new
  end

# Test CRUD for books
  def test_welcome_page
    get '/books/welcome'
    assert last_response.ok?
    assert_equal "<div>\n  <p>Welcome to BlocBooks!</p>\n  <p>Please start by reading Eloquent Ruby and Algorithms</p>\n</div>\n", last_response.body
    assert last_response.header.has_value?("text/html")
  end

  # shows a single book
  def test_show_book
    get '/books/show'
    assert last_response.ok?
    assert last_response.header.has_value?("text/html")
  end

  # fill out form to add a book to the library
  def test_new_book
    get '/books/new'
    assert last_response.ok?
    assert last_response.header.has_value?("text/html")
  end

  # creating the book in the library
  def test_create_book
    get '/books/create'
    assert last_response.ok?
    assert last_response.header.has_value?("text/html")
  end

  # edit occurs before update
  def test_edit_book
    get '/books/edit'
    assert last_response.ok?
    assert last_response.header.has_value?("text/html")
  end

  # update stores in database, theoretically.
  def test_update_book
    get '/books/update'
    assert last_response.ok?
    assert last_response.header.has_value?("text/html")
  end

  # deletes a book from the library
  def test_destroy_book
    get '/books/destroy'
    assert last_response.ok?
    assert last_response.header.has_value?("text/html")
  end


  #****************************************************************************
  #Test CRUD for library
  def test_new_library
    get '/libraries/new'
    assert last_response.ok?
    assert last_response.header.has_value?("text/html")
  end

  def test_create_library
    get '/libraries/create'
    assert last_response.ok?
    assert last_response.header.has_value?("text/html")
  end

  def test_edit_library
    get '/libraries/edit'
    assert last_response.ok?
    assert last_response.header.has_value?("text/html")
  end

  def test_update_library
    get '/libraries/update'
    assert last_response.ok?
    assert last_response.header.has_value?("text/html")
  end

  # no edit or update methods for library, destroy_library closes account.
  def test_destroy_library
    get '/libraries/destroy'
    assert last_response.ok?
    assert last_response.header.has_value?("text/html")
  end

end
