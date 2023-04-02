import 'package:flutter/material.dart';
import 'package:flutter_application_gamifacion/src/dataStore/historieIndex.dart';

class ReadingScreen extends StatefulWidget {
  ReadingScreen({Key? key}) : super(key: key);

  @override
  State<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  @override
  Widget build(BuildContext context) {
    var usedHistorie = historieIndex;
    return Container(
      color: Colors.white,
      child: Scrollbar(
          child: Scaffold(
              body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset(
                  histories[usedHistorie]["image_asset_path"].toString(),
                  width: 300,
                ),
              ),
              SizedBox(
                child: Text(
                  histories[usedHistorie]["name"].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: (histories[usedHistorie]["text"]
                            as List<InlineSpan>))),
              )
            ],
          ),
        ),
      ))),
    );
  }
}

TextSpan boldWord(String word) {
  return TextSpan(
      text: word,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15));
}

var pathHistoriesImages = 'assets/images';

var histories = [
  {
    "id": 0,
    "name": "",
    "image_asset_path": "$pathHistoriesImages/historie1.jpg",
    "text": <TextSpan>[const TextSpan(text: ''), const TextSpan(text: '')],
  },
  {
    "id": 1,
    "name": "Pedro y el lobo",
    "image_asset_path": "$pathHistoriesImages/historie1.jpg",
    "text": <TextSpan>[
      const TextSpan(
          text:
              '''Érase una vez un pequeño pastor que se pasaba la mayor parte de su tiempo paseando y cuidando de sus ovejas en el campo de un pueblito. Todas las mañanas, muy tempranito, hacía siempre lo mismo. Salía a la pradera con su rebaño, y así pasaba su tiempo. Muchas veces, mientras veía pastar a sus ovejas, él pensaba en las cosas que podía hacer para '''),
      boldWord("divertise. "),
      const TextSpan(text: ''' 
Como muchas veces se aburría, un día, mientras descansaba debajo de un árbol, tuvo una idea. 

Decidió que pasaría un buen rato divirtiéndose a costa de la gente del pueblo que vivía por allí cerca, haciendo '''),
      boldWord("burlas. "),
      const TextSpan(text: '''Se acercó y empezó a gritar:

- ¡Socorro, el lobo! ¡Qué viene el lobo!

La gente del pueblo cogió lo que tenía a mano, y se fue a auxiliar al pobre pastorcito que pedía auxilio, pero cuando llegaron allí, descubrieron que todo había sido una '''),
      boldWord("broma "),
      const TextSpan(
          text: '''pesada del pastor, que se deshacía en risas por el suelo. 

Los aldeanos se enfadaron y decidieron volver a sus casas. Cuando se habían ido, al pastor le hizo tanta gracia la broma que se puso a repetirla. 
Y cuando vio a la gente suficientemente lejos, volvió a gritar:

- ¡Socorro, el lobo! ¡Que viene el lobo!

La gente, volviendo a oír, empezó a correr a toda prisa, pensando que esta vez sí que se había presentado el lobo feroz, 
y que realmente el pastor necesitaba de su ayuda. Pero al llegar donde estaba el pastor, se lo encontraron por los suelos, 
riéndose de ver cómo los aldeanos habían vuelto a auxiliarlo. Esta vez los aldeanos se enfadaron aún más, 
y se marcharon terriblemente enfadados con la '''),
      boldWord('mala actitud '),
      const TextSpan(
          text: '''del pastor, y se fueron enojados con aquella situación. 
A la mañana siguiente, mientras el pastor pastaba con sus ovejas por el mismo lugar, aún se reía cuando recordaba 
lo que había ocurrido el día anterior, y no se sentía arrepentido de ninguna forma. 
Pero no se dio cuenta de que, esa misma mañana se le acercaba un lobo. 
Cuando se dio media vuelta y lo vio, el '''),
      boldWord("miedo "),
      const TextSpan(
          text:
              '''le invadió el cuerpo. Al ver que el animal se le acercaba más y más, empezó a gritar desesperadamente:

- ¡Socorro, el lobo! ¡Que viene el lobo! ¡Qué se va a devorar todas mis ovejas! ¡Auxilio!

Pero sus gritos han sido en vano. Ya era bastante tarde para convencer a los aldeanos de que lo que decía era verdad. Los aldeanos, 
habiendo aprendido de las '''),
      boldWord('mentiras '),
      const TextSpan(text: '''del pastor, de esta vez hicieron oídos sordos. 
¿Y lo qué ocurrió? Pues que el pastor vio como el lobo se abalanzaba sobre sus ovejas, mientras él intentaba pedir auxilio, una y otra vez:

- ¡Socorro, el lobo! ¡El lobo!

Pero los aldeanos siguieron sin hacerle caso, mientras el pastor vio como el lobo se comía unas cuantas ovejas y se llevaba otras tantas para la cena,  sin poder hacer nada, absolutamente. Y fue así que el pastor reconoció que había sido muy injusto con la gente del pueblo, y aunque ya era tarde, se arrepintió profundamente, y nunca más volvió burlarse ni a '''),
      boldWord('mentir '),
      const TextSpan(text: '''a la gente.
''')
    ],
  },
  {
    "id": 2,
    "name": "Caperucita Roja",
    "image_asset_path": "$pathHistoriesImages/CaperucitaRoja.jpg",
    "text": <TextSpan>[
      const TextSpan(
          text:
              'En un bosque muy lejos de aquí, vivía una alegre y bonita niña a la que todos querían mucho. Para su cumpleaños, su mamá le preparó una gran fiesta. Con sus amigos, la niña jugó, bailó, sopló las velitas, comió tarta y caramelos. Y como era buena, recibió un montón de regalos. Pero su abuela tenía una sorpresa:'),
      boldWord('le regaló una capa roja de la que la niña jamás se separó.'),
      const TextSpan(
          text:
              'Todos los días salía vestida con la caperuza. Y desde entonces, todos la llamaban de Caperucita Roja. Un día su mamá le llamó y le dijo: Caperucita, mañana quiero que vayas a visitar a la abuela porque está enferma. Llévale esta cesta con frutas, pasteles, y una botella de vino dulce.'),
      const TextSpan(
          text:
              'A la mañana siguiente, Caperucita se levantó muy temprano, se puso su capa y se despidió de su mamá que le dijo:'),
      const TextSpan(text: 'Hija, ten mucho cuidado.'),
      boldWord(
          'No cruces el bosque ni hables con desconocidos. Pero Caperucita no hizo caso a su mamá. Y como creía que no había peligros, decidió cruzar el bosque para llegar mas temprano')
    ],
  },
  {
    "id": 3,
    "name": "Los tres cerditos",
    "image_asset_path": "$pathHistoriesImages/TresCerditos.jpg",
    "text": <TextSpan>[
      const TextSpan(
          text:
              'Junto a sus papás, tres cerditos habían crecido alegremente en una cabaña del bosque. Y como ya eran mayores, sus papás decidieron que era hora de que hicieran, cada uno, su propia casa. Los tres cerditos se despidieron de sus papás, y fueron a ver cómo era el mundo.'),
      const TextSpan(
          text:
              'El primer cerdito, el perezoso de la familia, decidió hacer una casa de paja. En un minuto la choza estaba hecha. Y entonces se echó a dormir.'),
      const TextSpan(
          text:
              'El segundo cerdito, un glotón, prefirió hacer una cabaña de madera. No tardó mucho en construirla. Y luego se echó a comer manzanas.'),
      const TextSpan(
          text:
              'El tercer cerdito, muy trabajador, optó por construirse una casa de ladrillos y cemento. Tardaría más en construirla pero se sentiría más protegido.')
    ],
  },
  {
    "id": 4,
    "name": "",
    "image_asset_path": "$pathHistoriesImages/",
    "text": <TextSpan>[const TextSpan(text: ''), const TextSpan(text: '')],
  }
];
// more histories https://www.guiainfantil.com/1358/cuento-infantil-pedro-y-el-lobo.html