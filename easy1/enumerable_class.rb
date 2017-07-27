class Tree
  attr_reader :names

  include Enumerable

  def initialize(*names)
    @names = names
  end

  def each
    @names.each
  end
end

tree = %w(John Sarah Fred Caleb Zoe)
tree.select { |person| p person }
