# This is the list of books for my libary project 2
# ""=>"",
book = {"Artemis Fowl"=>"Eoin Colfer",
"Chimera"=>"John Barth",
"Cats have no lord"=>"Will Shetterly",
"Aegypt"=>"John Crowley",
"Akata Witch"=>"Nnedi Okorafor","Akata Warrior"=>"Nnedi Okorafor",
"Aladore"=>"Henry Newbolt",
"Alice in Wonderland"=>"Lewis Carroll",
"The tales of alvin maker"=>"Orson Scott Card","Harts Hope"=>"Orson Scott Card",
"American gods"=>"Neil Gaiman","Coraline"=>"Neil Gaiman",
"Beauty"=>"Robin McKinley",
"The Lion, The witch, and the wardrobe"=>"C.S. Lewis","Prince Caspian: The Return to Narnia"=>"C.S. Lewis",
"The Voyage of the Dawn Treader"=>"C.S. Lewis","The Silver Chair"=>"C.S. Lewis","The Horse and his Boy"=>"C.S. Lewis",
"The Magicians Nephew"=>"C.S. Lewis","The Last battle"=>"C.S. Lewis",
"City of Bones"=>"Martha Wells","The Death of the Necromancer"=>"Martha Wells",
"The Fall of Iie-Rien"=>"Martha Wells","The Element of fire"=>"Martha Wells",
"The Dark Tower:The gunsligner"=>"Stephen King","The Little Sisters of Eluria"=>"Stephen King",
"The Dark Tower II: The Drawing of the Three"=>"Stephen King","The Dark Tower III: The Waste Lands"=>"Stephen King",
"The Dark Tower IV: Wizard and Glass"=>"Stephen King","The Dark Tower: The Wind through the Keyhole"=>"Stephen King",
"The Dark Tower V: Wolves of the Dalla"=>"Stephen King","The Dark Tower VI: Song of Susannah"=>"Stephen King",
"The Dark Tower VI: The Dark Tower"=>"Stephen King","The Eyes of the Dragon"=>"Stephen King",
"Discworld"=>"Terry Pratchett",
"Word & Void"=>"Terry Brooks","The Genesis of Shannara"=>"Terry Brooks",
"First King of Shannara"=>"Terry Brooks","The Sword of Shannara"=>"Terry Brooks",
"The Heritage of Shannara"=>"Terry Brooks","The Voyage of the Jerle Shannara"=>"Terry Brooks",
"High Druid of Shannara"=>"Terry Brooks","The Dark Legacy of Shannara"=>"Terry Brooks",
"The Defenders of Shannara"=>"Terry Brooks","The Fall of Shannara"=>"Terry Brooks",
"Wizard for Hire"=>"Jim Butcher","Wizard by trade"=>"Jim Butcher","Wizard at Large"=>"Jim Butcher",
"Wizard under Fire"=>"Jim Butcher","Small Favor"=>"Jim Butcher","Turn Coat"=>"Jim Butcher",
"Changes"=>"Jim Butcher","Ghost Story"=>"Jim Butcher","Cold days"=>"Jim Butcher",
"Skin Game"=>"Jim Butcher","Peace Talks"=>"Jim Butcher","Battle Grounds"=>"Jim Butcher",
"Elantris"=>"Brandon Sanderson",
"The Fool on the hill"=>"Matt Ruff",
"Eragon"=>"Christopher Paolini","Eldest"=>"Christopher Paolini","Brisingr"=>"Christopher Paolini",
"Inheritance"=>"Christopher Paolini",
"Excalibur"=>"Sanders Anne Laubenthal",
"The Last Hero"=>"Rick Riordan","The Son of Neptune"=>"Rick Riordan","The House of Hades"=>"Rick Riordan",
"The Blood of Olympus"=>"Rick Riordan","The Red Pyramid"=>"Rick Riordan","The Throne of Fire"=>"Rick Riordan",
"The Serpent's Shadow"=>"Rick Riordan","The Lighting Theif"=>"Rick Riordan",
"The Sea of Monsters"=>"Rick Riordan","The Titan's curse"=>"Rick Riordan",
"The Battle of the Labyrinth"=>"Rick Riordan","The Last Olympian"=>"Rick Riordan",
"The Hobbit"=>"J.R.R. Tolkien","The Fellowship of the Ring"=>"J.R.R. Tolkien",
"The Two Towers"=>"J.R.R. Tolkien","The Return of the King"=>"J.R.R. Tolkien",
"The Lost tales"=>"J.R.R. Tolkien",
"Howl's Moving Castle"=>"Diana Wynn Jones",
"The Name of the Wind"=>"Patrick Rothfuss","The Wise Man's Fear"=>"Patrick Rothfuss",
"The Doors of Stone"=>"Patrick Rothfuss",
"Legends & Lattes"=>"Travis Baldree",
"The Poppy War"=>"R.F. Kuang"}

author = ("Eoin Colfer","John Barth","Travis Baldree","John Crowley",
"Nnedi Okorafor","Henry Newbolt","Lewis Carroll","Orson Scott Card",
"Neil Gaiman","Robin McKinley","C.S. Lewis", "Martha Wells","Stephen King",
"Terry Pratchett","Jim Butcher","Brandon Sanderson","Christopher Paolini",
"Sanders Anne Laubenthal","Matt Ruff","Rick Riordan","J.R.R. Tolkien",
"Diana Wynn Jones","Patrick Rothfuss","Terry Brooks","R.F. Kuang")

filename = "bookssaved.txt"

def file_add(x)
File.open(filename, "w") do |file|
    file.close
end

puts "Do you Wish to start libarytracker3000?"
puts "y or n."
n = gets.chomp
if n == "y":
   puts "What would you like to do."
   puts "1. Add Books to your list: "
   puts "2. Remove Books from your list: "
   puts "3. Request Books to be added: "
   puts "4. "
   puts "5. Exit"
   y = gets.chomp.to_string
   if y == "1"
      
   elsif y == "2"

   elsif y == "3"
   
   elsif y == "4"

   elsif y == "5"
      "Done."
else
   puts "what are you here for then?"