sun = ['visible', 'hidden'].sample
puts 'The sun is so bright!' if sun == 'visible'
puts 'The clouds are block the sun!' unless sun == 'visible'