class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
      self.val = val
      self.neighbors = []
    end

end

def bfs(starting_node, target_value)
    visited = []
    queue = [starting_node]
    while !queue.empty?
        node = queue.shift
        return node if node.val == target_value
        node.neighbors.each do |neighbor_node|
            if !visited.include?(neighbor_node) && !queue.include?(neighbor_node)
                queue.push(neighbor_node)
                visited.push(neighbor_node)
            end
        end   
    end
    nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "d")