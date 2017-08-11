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

  # NB: In Ruby, shift is an O(1) operation. This is not true of all languages.
  def self.merge(left, right, &prc)
    merged_array = []
    # prc = Proc.new { |fish1, fish2| fish1.length <=> fish2.length } unless block_given?
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

p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish',
                  'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
#=> "fiiiissshhhhhh"
