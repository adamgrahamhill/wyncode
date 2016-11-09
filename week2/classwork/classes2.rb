class Table
  @@next_table_id = 1 #class variable
  attr_reader :id
  def initialize
    @id = @@next_table_id
    @@next_table_id += 1
  end
  def change_next_id(next_id)
    @@next_table_id = next_id
  end
  def self.next_table_id
    @@next_table_id
  end
  def self.preview_next_id
    @@next_table_id
  end
end

p Table.next_table_id
t = Table.new
p t.id
t2 = Table.new
p t2.id
t.change_next_id(99)
p Table.preview_next_id
