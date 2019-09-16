require("minitest/autorun")
require("minitest/rg")
require_relative("../library")

class TestLibraryClass < Minitest::Test

  def setup
    @booktest1 = {
      title: "lord_of_the_rings",
      rental_details:
      {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }
    @booktest2 = {
      title: "1984",
      rental_details:
      {
        student_name: "Frank",
        date: "07/03/18"
      }
    }
    @booktest3 = {
      title: "L'etranger",
      rental_details:
      {
        student_name: "Bob",
        date: "23/08/13"
      }
    }
    @library = [@booktest1, @booktest2, @booktest3]
  end

  def test_get_books()
    expected = @library
    library = LibraryBooks.new(@library)
    # p book
    # p expected
    assert_equal(expected, library.get_books())
  end

  def test_get_book_info
    library = LibraryBooks.new(@library)
    expected = @booktest2
    assert_equal(expected, library.get_all_info("1984"))
  end

  def test_get_rental_info
    library = LibraryBooks.new(@library)
    expected = @booktest2[:rental_details]
    assert_equal(expected, library.get_rental_info("1984"))
  end

  def test_add_new_book
    library = LibraryBooks.new(@library)
    library.add_new_book({title: "The Hobbit", rental_details: {student_name: "",
    date: ""}})
    assert_equal(4, library.get_books().length())
  end

end
