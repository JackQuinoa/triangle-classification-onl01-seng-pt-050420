# class Triangle
  
#   attr_accessor :side_one, :side_two, :side_three
#   attr_reader :isosceles, :equilateral, :scalene
  
#   def initialize(side_one, side_two, side_three)
#     @side_one = side_one
#     @side_two = side_two
#     @side_three = side_three
#   end
  
#   class TriangleError < StandardError
#     def error 
#       if @side_one == @side_two && @side_one == @side_three
#         return :equilateral
#       elsif @side_one == @side_two || @side_one = @side_three
#         return @isosceles      
#       else @scalene
#     # "Side length must be greater than 0.  The sum of two sides must be greater than the third." 
#       end
#     end
#   end
  
#   def kind 
#       begin
#         raise TriangleError
#       rescue TriangleError => error
#           puts error
#       end 
#   end
  
# end

class Triangle
  attr_accessor :one, :two, :three
  
    def initialize (one, two, three)
        @one = one
        @two = two
        @three = three
    end
    
    class TriangleError < StandardError
      def message
        "Side length must be greater than 0.  The sum of two sides must be greater than the third. "
      end
    end
    
    def kind
         if one <= 0 || two <= 0 || three <= 0
            begin
                raise TriangleError => message
            end
        elsif one == nil || two == nil || three == nil
            begin
                raise TriangleError => messag
            end
        elsif one + two <= three || one + three <= two || three + two <= one
            begin
                raise TriangleError => error
                puts error.message
            end
        end
        
        if one == two && one == three
            :equilateral
        elsif one == two || one == three || two == three
            :isosceles
        else
            :scalene
        end
    end
end
#     def illegal_triangle
#         if one <= 0 || two <= 0 || three <= 0
#             begin
#                 raise TriangleError
#             end
#         elsif one == nil || two == nil || three == nil
#             begin
#                 raise TriangleError
#             end
#         elsif one + two <= three || one + three <= two || three + two <= one
#             begin
#                 raise TriangleError
#             end
#         end
#     end
# end

