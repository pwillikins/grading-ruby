require 'grading'

describe Grading do

  describe "grades" do

    it "returns :down for the difference in grades" do
      grades = Grading.new

      input = [6,3]

      expected = [:down]

      expect(grades.sort(input)).to eq expected
    end

    it "returns :down and :up for the difference in grades" do
      grades = Grading.new

      input = [6,3,5,4,3,4,5]

      expected = [:down, :up, :down, :down, :up, :up]

      expect(grades.sort(input)).to eq expected
    end

    it "returns :even when comparing grades" do
      grades = Grading.new

      input = [4,4]

      expected = [:even]

      expect(grades.sort(input)).to eq expected
    end

    it "returns :down and :up for the difference in grades" do
      grades = Grading.new

      input = [6,3,5,4,3,4,4,5]

      expected = [:down, :up, :down, :down, :up, :even, :up]

      expect(grades.sort(input)).to eq expected
    end
  end
end