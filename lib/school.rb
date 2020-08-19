class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @end_num = 0
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    start_num = @start_time[0..-4].to_i
    end_num = start_num + @hours_in_school_day
    @end_num = end_num
    end_num.to_s.concat(":00")
  end

  def is_full_time?
    if @hours_in_school_day > 4
      true
    else
      false
    end
  end

  def standard_student_names
    @student_names.map do |name|
      name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    self.end_time
    if @end_num > 12
      converted_end_num = @end_num - 12
      converted_end_num.to_s.concat(":00")
    else
      self.end_time
    end
  end

end
