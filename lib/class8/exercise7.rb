#!/usr/bin/env ruby
#
# 5 points
#
# Write the following method:
#
#   Array#each_without_yolo(&block)
#
#     Iterates through an Array object, calling the `block` with each element.
#     However, of the element is some form of 'YOLO', it calls the block with
#     'Life is too short'.
#
#     %w(OMG YOLO ROTFL yolo FTW).each_without_yolo { |e| puts e }
#
#     Output:
#
#     OMG
#     Life is too short
#     ROTFL
#     Life is too short
#     FTW

class Array
  def each_without_yolo(&block)
    each do |i|
      if i != 'yolo' && i != 'YOLO'
        block.call(i)
      else
        puts 'Life is too short'
      end
    end
  end
end
