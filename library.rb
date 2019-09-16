class LibraryBooks

  # attr_accessor(:book)

  def initialize(input_books)
    @books = input_books
  end

  def get_books()
    return @books
  end

  def get_all_info(search_title)
    for book in @books
      return book if book[:title] == search_title
    end
  end

  def get_rental_info(search_title)
    for book in @books
      return book[:rental_details] if book[:title] == search_title
    end
  end

  def add_new_book(new_book)
    @books << new_book
  end

end
