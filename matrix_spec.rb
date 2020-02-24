class Matrix
  def rotate matrix
    matrix.transpose.reverse
  end
end

RSpec.describe Matrix do
  matrix = Matrix.new
  context "Basic tests" do
    example = [[1,2,3],
               [4,5,6],
               [7,8,9]]
    example2 = [[1, 2],
                [3, 4]]
    example3 = [[3],[2],[1]]
    example4 = [[1,2,3],[4,5,6],[7,8,9],[10,11,12]]
  
    it "should return the original matrix (3x3) rotated to left with 90 degree" do
      expect(matrix.rotate(example)).to eq([[3,6,9],[2,5,8],[1,4,7]])
    end
    it "should return the original matrix (2x2) rotated to left with 90 degree" do
      expect(matrix.rotate(example2)).to eq([[2,4],[1,3]])
    end
    it "should return the original matrix (1x3) rotated to left with 90 degree" do
      expect(matrix.rotate(example3)).to eq([[3,2,1]])
    end
    it "should return the original matrix (4x3) rotated to left with 90 degree" do
      expect(matrix.rotate(example4)).to eq([[3, 6, 9, 12], [2, 5, 8, 11], [1, 4, 7, 10]])
    end
    it "should return the original matrix (0x0) rotated to left with 90 degree" do
      expect(matrix.rotate([[]])).to eq([])
    end
    
  end
  
end
           
