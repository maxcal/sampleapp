class Store < ActiveRecord::Base

  has_many :books
  has_many :categories, through: :books

  def books_per_category
    categories.eager_load(:books).map do |c|
      {
          name: c.name,
          count: c.books.size # Using size instead of count is important since count will always query the DB
      }
    end
  end

  def books_per_category2
    categories.distinct.map do |c|
      {
          name: c.name,
          count: c.books.count
      }
    end
  end

  # by Jakub Kosiński
  def books_per_category3
    categories.select('categories.id, categories.name, count(books.id) as count').group('categories.id').map do |c|
      {
          name: c.name,
          count: c.count
      }
    end
  end


  # by PhilVarg
  def books_per_category4
    categories.with_books_count.map do |c|
      {
          name: c.name,
          count: c.book_count
      }
    end
  end

  # by PhilVarg
  def books_per_category5
    categories.with_books_count2.map do |c|
      {
          name: c.name,
          count: c.book_count
      }
    end
  end
end
