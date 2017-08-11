class LRUCache
    def initialize(max_length = 5)
      @cache = []
      @max_length = max_length
    end

    def count
      @cache.count
    end

    def add(el)
      if cache.include?(el)
        cache.delete(el)
      elsif count == @max_length
        @cache.pop
      end

      @cache.unshift(el)
    end

    def show
      p @cache
    end

    private
    # helper methods go here!

  end
