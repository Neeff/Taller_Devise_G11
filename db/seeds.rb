# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



titles = ['El Origen del Hombre','El robo del martillo de Thor','La leyenda de Sleipnir']
text = [
  'Según la mitología nórdica, la pared que encerraba a Asgard fue destruida durante una batalla entre los vanios y los asios, por lo que la residencia de los dioses quedaba desprotegida ante un ataque de los gigantes. Cierto día un constructor llamado Blast llegó a Asgard y se ofreció como constructor, pero a cambio se le debía entregar a la diosa Freya, junto con el Sol y la Luna, los dio­ses necesitaban ayuda para lograr la reconstrucción, pero los térmi­nos indicados por el gigante eran abusivos. Sin embargo, ante los términos que propuso Loki pensaron que conseguirían parte de la pared y no tenían que hacer frente a las peticiones de Blast, así la pared debía ser construida en el término de tres inviernos. El gigante aceptó el trato pero con la condición de que pudiera usar su semental, Svadilfari, en la reconstrucción del muro. El tra­bajo procedió mucho más rápidamente de lo que los dioses se ha­bían imaginado y comenzaron a preocuparse, Odín amenazó en ma­tar a Loki si la pared era terminada dentro del plazo asignado, por lo que éste pensó en privar al gigante de su caballo, así tomó la forma de una yegua joven, para engañar al animal y llevarlo al bosque. Cuando Svadilfari volvió, su amo ya estaba demasiado retrasado como para terminar su trabajo, además el constructor estaba tan enojado que reveló su forma verdadera como uno de los peores ene­migos de los asios, un gigante de roca. El dios Thor, al darse cuen­ta, blandió su martillo, Mjollnir, y acabó con Blast. Meses des­pués, Loki volvió a Asgard en donde dio a luz a un caballo de ocho patas, el cual regaló a Odín que le llamó Sleipnir. El caballo podía viajar por mar, tierra y aire y era más veloz que cual­quier hombre o especie.',
  'Un día al despertar, Thor se percató de que su martillo había LslJ sido robado, rápidamente pensó que Loki tenía algo que ver y tras interrogarle, éste le sugirió que fuera donde los gigantes, que ellos seguramente sabrían lo ocurrido con su arma. De este modo pidió prestado el traje de plumas a Freya y partió volando al reino de los gigan­tes, en donde lo encontró, ya que había sido robado por Thrym, rey de los gigantes, que pedía como rescate la mano de la diosa Freya. Loki ideó un plan, que consistía en disfrazar a Thor con la ropa y el collar de Freya y colocarle un velo en la cara, una vez en la tierra de los gigantes, Thrym ofreció un banquete en honor de su esposa durante el cual Thor se desprendió de su disfraz y agarrando su mar­tillo arremetió contra los gigantes. Aunque Thrym suplicó piedad el dios no lo escuchó, mientras el salón se llenaba de truenos y relám­pagos, Thor dio muerte a Thrym y a los demás gigantes.',
  'En un principio Odín, uno de los dioses creadores de todas las cosas, nombró unos gobernantes y los erigió en jueces para que regulasen el destino de los hombres y los enanos junto a él. Se reunían en el centro de Asgard, aquí edificó doce sedes para ellos y un trono que ocuparía él. En el lugar donde se encontraba el otro existían otras dos estancias, la de los dioses cuyo nombre era Gladsheim el santuario de las diosas, Vingolf. Los enanos habían sido engendrados de la carne del gigante Ymer de la cual surgieron tras su muerte a manos de Odín y poseían inteligencia y forma humana, vivían en la tierra, en las cuevas más profundas. Cuatro de ellos Nordi, Sudri, Ausstri y Vestri fueron colocados para soportar el cielo, simbolizando los cuatro puntos cardinales Norte, Sur, Este y Oeste, respectivamente. En cierta ocasión en que Odín y sus hermanos caminaban por la playa divisaron dos troncos de árbol, un fresno y un aliso, arrrastrados por las olas, estos procedían del cabello de Ymir que había llegado a formar grandes bosques. Del fresno crearon un hombre al que se le dio el nombre de Ask y del aliso crearon una bella mujer a la que se le llamó Embla, éstos tuvieron la vida de un árbol hasta que los dioses les dieron mente, voluntad y deseo. Odín les dio la respiración y el alma; Vile, la capacidad de pensar y moverse y Ve les otorgó las facultades de hablar, oír y ver. De ellos descendería toda la raza humana, cuya morada es llamada Midgard o Manaheim.'
]
links_img = ['https://i0.wp.com/mitosyleyendascr.com/wp-content/uploads/2013/07/ask_embla.jpg?resize=178%2C300&ssl=1','https://i0.wp.com/mitosyleyendascr.com/wp-content/uploads/2013/07/martillo_thor.jpg?zoom=2&resize=284%2C300','https://i1.wp.com/mitosyleyendascr.com/wp-content/uploads/2013/07/sleipnir.jpg?zoom=2&resize=300%2C240']
User.destroy_all
History.destroy_all
User.create(email: 'admin@prueba.com',
            password: '123456',
            name: Faker::Name.name,
            user_name: Faker::Simpsons.character,
            admin: true

)
users = User.all.sample
2.times do
  User.create(email: Faker::Internet.email,
              password: '123456',
              name: Faker::Name.name,
              user_name: Faker::Simpsons.character
  )
end
3.times do |i|
  History.create(title: titles[i],
                  picture: links_img[i],
                  content: text[i],
                  user_id: users

  )
end
