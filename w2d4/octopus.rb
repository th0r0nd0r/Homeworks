def sluggish_octopus(fish)
  longest_fish = fish[0]
  fish.each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end

  longest_fish
end

class Array
  def self.merge_sort (array, &prc)
    prc = Proc.new { |fish1, fish2| fish1.length <=> fish2.length } unless block_given?
    return array if array.length <= 1

    mid_idx = array.length / 2
    merge(
      merge_sort(array.take(mid_idx), &prc),
      merge_sort(array.drop(mid_idx), &prc),
      &prc
    )
  end

  def self.merge(left, right, &prc)
    merged_array = []
    prc = Proc.new { |fish1, fish2| fish1.length <=> fish2.length } unless block_given?
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged_array << left.shift
      when 0
        merged_array << left.shift
      when 1
        merged_array << right.shift
      end
    end

    merged_array + left + right
  end
end

def dominant_octopus(fish)
  Array.merge_sort(fish).last
end



def clever_octopus(fish)
  longest_fish = fish[0]
  fish.each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end

  longest_fish
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles = tiles_array)
  tiles.find_index { |tile| tile == direction }
end



tiles_hash = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7}

def hash_dance(direction, tiles)
  tiles[direction]
end
