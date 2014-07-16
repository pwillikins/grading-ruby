class Grading

  def sort(input)
    results = []
    input.each_with_index do |number_grade, index|
      if input[index+1] != nil
        if input[index+1] < number_grade
          results << :down
        elsif input[index+1] == number_grade
          results << :even
        else
          results << :up
        end
      else
        []
      end
    end
    results
  end
end