def dir_to_array(string, prefix = "")
  array = []
  Dir.foreach(string) do |filename|
    next if filename == '.' or filename == '..'
    array << prefix + filename
  end
  return array.reverse
end

PROJECTS = [
{name: "Projecte1",
  content:"Lorem ipsum dolor sit amet",
  homepage_images: dir_to_array("app/assets/images/1/tr", "1/tr/"),
  showpage_images: dir_to_array('app/assets/images/1/op', '1/op/')},

  {name: "Juego-de-Café-o-Té-4uds",
  content:"Llena tus mañanas de color y calidez con un diseño natural y funcional.
  Puedes elegir entre 3 medidas diferentes: Café espresso, café cortado o té.
  Cada set contiene 4 tazas.

  Dimensiones:
  • Taza Café Espresso: Diámetro 6cm / Altura 8,3cm
  • Taza Café Cortado: Diámetro 7cm / Altura 9,3cm
  • Taza Té: Diámetro 8,5cm / Altura 11,3cm

  Material: Gres esmaltado.
  Al tratarse de una pieza artesanal y gracias a nuestro esmaltado manual, cada taza es única y puede presentar pequeñas variaciones de tonalidad.

  Fabricado artesanalmente en nuestro taller de La Bisbal d'Empordà (Gerona).
  Apto para lavavajillas, microondas y horno.",
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
  },


  {name: "Projecte6",
    content:"Lorem ipsum dolor sit amet",
    homepage_images: dir_to_array("app/assets/images/6/tr", "6/tr/"),
    showpage_images: dir_to_array("app/assets/images/6/op", "6/op/")
  },


  {name: "Projecte7",
    content:"Lorem ipsum dolor sit amet",
    homepage_images: dir_to_array("app/assets/images/7/tr", "7/tr/"),
    showpage_images: dir_to_array("app/assets/images/7/op", "7/op/")
  },


  {name: "Projecte8",
    content:"Lorem ipsum dolor sit amet",
    homepage_images: dir_to_array("app/assets/images/8/tr", "8/tr/"),
    showpage_images: dir_to_array("app/assets/images/8/op", "8/op/")
  },


  {name: "Projecte9",
    content:"Lorem ipsum dolor sit amet",
    homepage_images: dir_to_array("app/assets/images/9/tr", "9/tr/"),
    showpage_images: dir_to_array("app/assets/images/9/op", "9/op/")
  },


  {name: "Projecte10",
    content:"Lorem ipsum dolor sit amet",
    homepage_images: dir_to_array("app/assets/images/10/tr", "10/tr/"),
    showpage_images: dir_to_array("app/assets/images/10/op", "10/op/")
  },


  {name: "Projecte11",
    content:"Lorem ipsum dolor sit amet",
    homepage_images: dir_to_array("app/assets/images/11/tr", "11/tr/"),
    showpage_images: dir_to_array("app/assets/images/11/op", "11/op/")
  },


  {name: "Projecte12",
    content:"Lorem ipsum dolor sit amet",
    homepage_images: dir_to_array("app/assets/images/12/tr", "12/tr/"),
    showpage_images: dir_to_array("app/assets/images/12/op", "12/op/")
  },


  {name: "Projecte13",
    content:"Lorem ipsum dolor sit amet",
    homepage_images: dir_to_array("app/assets/images/13/tr", "13/tr/"),
    showpage_images: dir_to_array("app/assets/images/13/op", "13/op/")
  }
]


class PagesController < ApplicationController
  @@projects = PROJECTS
  def home
    @projects = @@projects
    @hola = "hola"
  end

  def test
    @projects = @@projects

  end
end
