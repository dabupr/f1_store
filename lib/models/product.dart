// ignore: file_names
import 'dart:ui';

class Product {
  final String image, title, description, imageP;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
    required this.imageP,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Ferrari",
      price: 234,
      size: 12,
      description: "For many, Ferrari and Formula 1 racing have become inseparable. The only team to have competed in every season since the world championship began, the Prancing Horse has grown from the humble dream of founder Enzo Ferrari to become one of the most iconic and recognised brands in the world. Success came quickly through the likes of Alberto Ascari and John Surtees, and continued – in amongst leaner times – with Niki Lauda in the 1970s and then Michael Schumacher in the 2000s, when Ferrari claimed a then unprecedented five consecutive title doubles, securing their status as the most successful and decorated team in F1 history...",
      image: 'assets/brands/ferrari_brand.png',
      color: Color.fromARGB(255, 212, 115, 115),
      imageP: 'assets/cars/ferrari_car.png'),
  Product(
      id: 2,
      title: "Mercedes",
      price: 234,
      size: 8,
      description: "Mercedes’ modern F1 revival started with the creation of a works squad for 2010 - the platform for a meteoric rise up the Grand Prix order. The team generated huge excitement from the off with the sensational return of Michael Schumacher, but headlines soon followed on track: three podiums in their debut season, all via Nico Rosberg - who then claimed a breakthrough pole/victory double at China in 2012. The following season he was paired with Lewis Hamilton, the duo going on to stage some epic title battles as the Silver Arrows swept all before them to become one of the most dominant forces of the modern F1 era. And with Hamilton now partnered by steely Finn Valtteri Bottas, Mercedes remain very much the team to beat…",
      image: "assets/brands/mercedes_brand.png",
      color: Color.fromARGB(255, 136, 136, 141),
      imageP: 'assets/cars/mercedes_car.png'),
  Product(
      id: 3,
      title: "Red Bull",
      price: 234,
      size: 10,
      description: "Red Bull were no strangers to F1 - as sponsors - prior to formally entering as a works team in 2004. Nonetheless, the scale of their success over the following decade was staggering. After a first podium in 2006, the team hit their stride in 2009, claiming six victories and second in the constructors' standings. Over the next four seasons they were a tour de force, claiming consecutive title doubles between 2010 and 2013, with Sebastian Vettel emerging as the sport's youngest quadruple champion. Now their hopes of recapturing that glory lie with an equally exciting talent – one named Max Verstappen…",
      image: "assets/brands/redBull2.png",
      color: Color.fromARGB(255, 146, 99, 92),
      imageP: 'assets/cars/redBull_car.png'),
  Product(
      id: 4,
      title: "Alpine",
      price: 234,
      size: 11,
      description: "Alpine may be a relatively new name to Formula 1, but Renault’s famous sportscar arm has plenty of motorsport heritage. The 2021 rebrand of the team marked the next step in Renault’s F1 revival, begun in 2016 with the takeover of the then-Lotus squad. Already race winners in their new guise, regular podiums and a tilt at the title must be their next target…",
      image: "assets/brands/alpine2.png",
      color: Color.fromARGB(255, 90, 138, 170),
      imageP: 'assets/cars/alpine_car.png'),
  Product(
      id: 5,
      title: "McLaren",
      price: 234,
      size: 12,
      description: "Since entering the sport in 1966 under the guidance and restless endeavour of eponymous founder Bruce, McLaren's success has been nothing short of breathtaking. Five glittering decades have yielded countless victories, pole positions and podiums, not to mention eight constructors' championships. What's more, some of the sport's greatest drivers made their names with the team, including Emerson Fittipaldi, Ayrton Senna, Mika Hakkinen and Lewis Hamilton...",
      image: "assets/brands/mcLaren.png",
      color: const Color.fromARGB(255, 231, 151, 3),
      imageP: 'assets/cars/mclaren_car.png'),
  Product(
    id: 6,
    title: "Alfa romeo",
    price: 234,
    size: 12,
    description: "The name Alfa Romeo boasts Formula 1 connections dating back to the championship’s inception in 1950. Fast forward to the 21st century and Italian flare combines with Swiss sensibilities in a new era for the team formerly known as Sauber. Having enjoyed considerable success in world sportscars, where he helped nurture the emerging talents of future F1 stars Michael Schumacher and Heinz-Harald Frentzen, Peter Sauber guided his eponymous squad into F1 in 1993. The team has since established itself as a mainstay of the grid, becoming race winners under BMW’s brief ownership, and developing a well-earned reputation not only for producing competitive cars, but also for developing young drivers.",
    image: "assets/brands/alfa.png",
    color: Color.fromARGB(255, 129, 66, 158),
    imageP: 'assets/cars/alfa_car.png',
  ),
  Product(
    id: 7,
    title: "Haas",
    price: 234,
    size: 12,
    description: "The youngest team on the grid, Haas made their highly impressive debut in 2016, and in the process became the first all-American-led F1 squad in three decades. Founded by industrialist Gene Haas, they are based in the United States on the same Kannapolis, North Carolina facility as his championship-winning NASCAR Sprint Cup Series team, Stewart-Haas Racing. The Ferrari-powered team, led by the charismatic Guenther Steiner, also have a UK factory in Banbury…",
    image: "assets/brands/haas.png",
    color: Color.fromARGB(255, 131, 74, 117),
    imageP: 'assets/cars/haas_car.png',
  ),
  Product(
    id: 8,
    title: "AlphaTauri",
    price: 234,
    size: 12,
    description: "Established in 2006 as a squad in which young drivers from Red Bull’s prodigious talent pool could cut their F1 teeth, AlphaTauri – originally named Toro Rosso – were formed from the ashes of the plucky Minardi team. Sebastian Vettel gave validity to the approach almost immediately, delivering a fairy-tale win in 2008, before going on to enjoy world championship success with parent team Red Bull Racing. Today the ethos of nurturing talent still holds true, though the Italian squad are no longer simply a ‘B team’ but a constructor in their own right...",
    image: "assets/brands/alphatauri.png",
    color: Color.fromARGB(255, 116, 173, 206),
    imageP: 'assets/cars/alphaTauri_car.png',
  ),
  Product(
    id: 9,
    title: "Aston Martin",
    price: 234,
    size: 12,
    description: "Aston Martin’s original Formula 1 foray – over half a century ago – lasted just five races. This time, though, it’s serious. This F1 squad are no strangers to success, having won in their original guise of Jordan and most recently as Racing Point in 2020. Renowned for their ability to punch above their weight, and now with a four-time champion leading their driver line-up, Aston Martin are very much a team to watch…",
    image: "assets/brands/Aston.png",
    color: const Color.fromARGB(255, 10, 185, 89),
    imageP: 'assets/cars/astonMartin_car.png',
  ),
  Product(
    id: 10,
    title: "Williams",
    price: 234,
    size: 12,
    description: "Driven on by the brilliance and passion of the late Sir Frank Williams, Williams grew from humble beginnings to become a Formula 1 behemoth, unrivalled by all except Ferrari and McLaren in terms of enduring success. Over the past four decades the team has racked up Grand Prix wins and championship glory, and in the process nurtured some of the greatest talents in the sport, both in and out the cockpit. Now, following the Williams family's decision to step aside after the sale of the team to Dorilton Capital, a new era begins...",
    image: "assets/brands/Williams.png",
    color: const Color.fromARGB(255, 12, 130, 185),
    imageP: 'assets/cars/williams_car.png',
  ),
];

String dummyText =
    "Product description, product description, product description, product description, product description, product description, product description, product description";
