class Category < ActiveRecord::Base

  has_and_belongs_to_many :books
  validates_uniqueness_of :name

  scope :with_books_count, -> {
    joins(:books).select('categories.*, COUNT(books.id) as book_count').group('categories.id')
  }

  scope :with_books_count2, -> {
    joins('LEFT OUTER JOIN books_categories on books_categories.category_id = categories.id')
      .select('categories.*, COUNT(books_categories.book_id) as book_count').group('categories.id')
  }

end
