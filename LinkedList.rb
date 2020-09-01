class LinkedList

  attr_accessor :head, :tail
  
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)

    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
    else
      @tail.next_node = new_node
    end

    @size += 1
    @tail = new_node

  end
   
  def prepend(value)

    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end

    @size += 1    
  
  end
   
  def at(index)

    node = @head
    counter = 0

    until index == counter || node.next_node.nil?
      node = node.next_node
      counter += 1
    end
    
    counter == index ? counter : nil

  end

  def contains?(value)
    node = @head

    until value == node.value || node.next_node.nil?
      node == node.next_node
    end

    value == node.value ? true : false

  end
  
  def pop
    new_tail = self.at(@size - 1)
    new_tail.next_node = nil
    @tail = new_tail 
  end

  def find(value)
    node = @head
    counter = 0

    until value == node.value || node.next_node.nil?
      node = node.next_node
      counter += 1
    end

    value == node.value ? counter : nil

  end

  def to_s
    node = @head
    list_string = ''
    
    until node.next_node.nil?
      list_string + ' ( #{node.value} ) ->'
    end

    list_string + ' nil'

  end

  def insert_at(value, index)
    node = @head
    counter = 0

    until counter == (index - 1) || node.next_node.nil?
      node = node.next_node
    end

    new_node = Node.new(value)
    moved_node = node.next_node
    new_node.next_node = moved_node
    node.next_node = new_node

  end

  def remove_at(index)
    node = @head
    counter = 0 

    until counter == (index + 1) || node.next_node.nil?          
      node = node.next_node
      counter += 1
      if counter == (index - 1)
        before_node = node
      elsif counter == index
        node.value = nil
        node.next_node = nil
      else counter == (index + 1)
        after_node == (index + 1)
      end      
    end        
    before.next_node == next_node
  end
end