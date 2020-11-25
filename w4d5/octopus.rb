
def on2(fish)
    max = ''
    size = fish.length
    (0...size).each do  |i|
        fishnn = fish[i]
        (i...size).each do  |j|
            if fishnn.length < fish[j].length
                max = fish[j]
            end
        end
    end
    max
end

def nlogn(input)
    #merge sort than return last
    fish = input.dup
    size = fish.length
    swap = true
    while swap
        swap = false
        (0...size).each do |i|
            (i+1...size).each do |j|
                if fish[i].length > fish[j].length
                    fish[i],fish[j] = fish[j],fish[i]
                    swap = true
                    break
                end
            end
        end
    end
    return fish[-1]
end

def n(fish)
    max = ''
    size = fish.length
    (0...size).each do  |i|
        max = fish[i] if max.length < fish[i].length
    end
    max
end





fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# nested loop hunt
p on2(fish)

# merge sort and then return last
p nlogn(fish)

# linear search
p n(fish)

#########################################
# Dance Dance Revolution

def slow_dance(target, arr)
    arr.each_with_index do |ele,i|
        return i if ele == target
    end
end

def fast_dance(target,hash)
    return hash[target]
end


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
new_tiles_data_structure = Hash.new()
tiles_array.each_with_index do |ele,i|
    new_tiles_data_structure[ele] = i
end
p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)


p fast_dance("up", new_tiles_data_structure)
p fast_dance("right-down", new_tiles_data_structure)

    
