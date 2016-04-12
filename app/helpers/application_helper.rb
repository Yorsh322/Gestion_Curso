module ApplicationHelper
  def set_contents
    Content.all
  end

  def set_summaries
    Summary.all
  end

  def set_subjects
    Subject.all
  end

  def full_topic(model)
    "#{model.unidad}. #{model.tema}"
  end

  def full_period(model)
    "#{model.period} #{model.year}"
  end

  def set_careers
    Career.all
  end

  def set_semesters
    Semester.all
  end

  def semesters_currents
    Semester.where(current: true)
  end

  def student_active
    Student.where(id: current_student)
  end

  def teacher_active
    Teacher.where(id: current_teacher)
  end

  def set_groups
    Group.all
  end

  def set_teachers
    Teacher.all
  end

  def set_students
    Student.all
  end

  def full_name(model)
    "#{model.nombre} #{model.apellido}"
  end

  def calendars_currents
    Calendar.where(status: true)
  end

  def set_professors
    Professor.all
  end

  def set_courses
    Course.all
  end

  def set_catalogs
    Catalog.all
  end
end
