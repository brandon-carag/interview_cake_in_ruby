# if rectangle 2 extends above rectangle's 1 height, 
# we know definitively that the height of the upper 
# side of the resultant rectangle is equal to 
# rectangle1.y + rectangle1.height.  Else, we know
# definitively that the upper side of the rectangle
# falls somewhere between rectangle1.y and (rectangle1.y + rectangle1.height).

# Next, we check whether rectangle2.y is less than rectangle1.y, if it is,
# we know that height of the resultant rectangle is equal to rectangle1.y.

# By this point, no matter what, we should be able to calculate y and the height



def calc_rectangular_intersection(rectangle1, rectangle2)
  rectangle3 = {} 
  return "No intersection" if rectangle2.

  #Calculating y and height
  if rectangle2.y + rectangle2.height > rectangle1.y +rectangle1.height
    if rectangle2.y < rectangle1.y
      rectangle3.y = rectangle1.y
      rectangle3.height = rectangle1.height
    else
      rectangle3.y = rectangle1.y + rectangle1.height - rectangle2.y
      rectangle3.height = rectangle1.y + rectangle1.height
    end
  else
    if rectangle2.y < rectangle1.y
      rectangle3.y = rectangle1.y
      rectangle3.height = rectangle2.y + rectangle2.height
    else
      rectangle3.y = rectangle2.height
      rectangle3.height = rectangle2.y + rectangle2.height
    end
  end

  #Calculating x and width
  if rectangle1. 

end