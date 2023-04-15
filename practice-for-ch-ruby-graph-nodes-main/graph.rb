class GraphNode
    attr_reader :value, :neighbors
    def initialize(val)
        @value = val
        @neighbors = []
    end

    def neighbors= (array)
        @neighbors = array
    end
    def bfs(starting_node,target_value)
        queue = []
         queue << starting_node
        until queue.empty?
            shifted = queue.shift
            return shifted if shifted == target_value
            shifted.neighbors.each do |child|
                queue << child
            end
        end
        return nil
    end
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

p b.bfs(a,"b")