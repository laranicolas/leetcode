# In a binary tree, the root node is at depth 0, and children of each depth k node are at depth k+1.

# Two nodes of a binary tree are cousins if they have the same depth, but have different parents.

# We are given the root of a binary tree with unique values, and the values x and y of two different nodes in the tree.

# Return true if and only if the nodes corresponding to the values x and y are cousins.
 

# Example 1:


# Input: root = [1,2,3,4], x = 4, y = 3
# Output: false
# Example 2:


# Input: root = [1,2,3,null,4,null,5], x = 5, y = 4
# Output: true
# Example 3:



# Input: root = [1,2,3,null,4], x = 2, y = 3
# Output: false
 

# Note:

# The number of nodes in the tree will be between 2 and 100.
# Each node has a unique integer value from 1 to 100.

class Node
  attr_accessor :left, :right, :val
  # Constructor to create a new node
  def initialize(data)
    @val = data 
    @left = nil
    @right = nil
  end
end

def is_cousins(root, x, y)
    cousins = {}
    depth = {}
    cousins, depth = find_cousins(root, cousins, depth)
    (cousins[x] != cousins[y]) && (depth[x] == depth[y])
end

def find_cousins(tree, cousins, depth, parent = nil)
    return if tree.nil?
    cousins[tree.val] = parent.val if !parent.nil?
    depth[tree.val] = (parent) ?  1 + depth[parent.val] : 0
    find_cousins(tree.left, cousins, depth, tree)
    find_cousins(tree.right, cousins, depth, tree)
    [cousins, depth]
end

root = Node.new(1)
root.left = Node.new(2)
root.right = Node.new(3)
root.left.left = Node.new(4)
root.right.right = Node.new(5)
root.left.left.left = Node.new(6)
root.left.left.right = Node.new(7)
puts is_cousins(root, 4, 3) == false
puts is_cousins(root, 4, 5) == true
puts is_cousins(root, 2, 3) == false
puts is_cousins(root, 6, 7) == false