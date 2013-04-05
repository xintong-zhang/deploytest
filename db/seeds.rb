# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cartoon_list = [["Aladdin", "Aladdin.png"],["Aurora","Aurora.png"],["Belle","Belle.png"],["Bunny","Bunny.png"], ["Chip","Chip.png"],["Daisy","Daisy.png"],["Donald","Donald.png"],["Dragon","Dragon.png"],["Elmer","Elmer.png"],["Goofy","Goofy.png"],["Jerry","Jerry.png"],["Kitty","Kitty.png"],["Mickey","Mickey.png"],["Minnie","Minnie.png"],["Mulan","Mulan.png"],["Panda","Panda.png"],["Simpson","Simpson.png"],["Tweety","Tweety.png"], ["Monkey","Monkey.png"], ["Penguin","Penguin.png"],["Owl","Owl.png"]]
cartoon_list.each do |name, url|
  Cartoon.create(name:name, url:url)
end
