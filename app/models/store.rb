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
end
