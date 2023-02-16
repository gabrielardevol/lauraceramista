# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
def dir_to_array(string, prefix = "")
  array = []
  Dir.foreach(string) do |filename|
    next if filename == '.' or filename == '..'
    array << prefix + filename
  end
  return array.reverse
end



Project.create([
{name: "Projecte1",
  content:"Lorem ipsum dolor sit amet",
  homepage_images: dir_to_array("app/assets/images/1/tr", "1/tr/"),
  showpage_images: dir_to_array('app/assets/images/1/op', '1/op/')},

  {name: "Projecte2",
  content:"Lorem ipsum dolor sit amet",
  homepage_images: dir_to_array("app/assets/images/2/tr", "2/tr/"),
  showpage_images: dir_to_array("app/assets/images/2/op", "2/op/"),
  },

  {name: "Projecte3",
  content:"Lorem ipsum dolor sit amet",

  homepage_images: dir_to_array("app/assets/images/3/tr", "3/tr/"),
  showpage_images: dir_to_array("app/assets/images/3/op", "3/op/")
  },


  {name: "Projecte4",
  content:"Lorem ipsum dolor sit amet",
  homepage_images: dir_to_array("app/assets/images/4/tr", "4/tr/"),
  showpage_images: dir_to_array("app/assets/images/4/op", "4/op/")

  },

  {name: "Projecte5",
  content:"Lorem ipsum dolor sit amet",
  homepage_images: dir_to_array("app/assets/images/5/tr", "5/tr/"),
  showpage_images: dir_to_array("app/assets/images/5/op", "5/op/")
  }
])
