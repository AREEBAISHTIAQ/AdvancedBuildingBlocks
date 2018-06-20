module Enumerable
    def my_each
        for a in self
            yield a
        end
    end

    def my_each_with_index
        for a in self
            yield a, self.index(a)
        end
    end

    def my_select
        show = []
        self.my_each {|a| show << a if yield a}
        show
    end

    def my_all?
        show = true
        self.my_each {|a| show = false unless yield a }
        show
    end

    def my_any?
        show = false
        self.my_each {|a| show = true if yield a }
        show
    end

    def my_none?
        show = true
        self.my_each {|a| show = false if yield a }
        show
    end

    def my_count
        return self.my_each unless block_given?
        counter = 0
        for a in self
            counter += 1 if yield a
        end
        return counter
    end

    def my_map
        show = []
        self.my_each {|a| show << yield(a) }
        show
    end

    def my_inject(num = nil)
        calculate = num.nil? ? first : num
        self.my.each { |a| calculate =  yield(calculate, a )}
        calculate 
      end
    
    def multiply_els(list)
        list.my_inject(1) { |product, i| product * i }
    end    
  end