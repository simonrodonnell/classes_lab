class Student

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def get_student_name()
    return @name
  end

  def get_cohort_name()
    return @cohort
  end

  def set_student_name(new_name)
    @name = new_name
  end

  def set_cohort_name(new_cohort)
    @cohort = new_cohort
  end

  def can_talk()
    return "I can talk!"
  end

  def favourite_language(language)
    return "I love #{language}"
  end

end
