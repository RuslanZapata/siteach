import 'package:siteach/src/pages/case/data/reviews.dart';
import 'package:siteach/src/pages/case/model/location.dart';

List<Location> locations = [
  Location(
    name: 'CASO 1',
    urlImage: 'assets/img/case/caso1.jpg',
    addressLine1: 'Caso del vendedor y los globos de helio.',
    addressLine2: 'BARAK (2006)', //AUTOR DEL CASO
    reviews: Reviews.allReviews,
  ),
  Location(
    name: 'CASO 2',
    urlImage: 'assets/img/case/caso2.jpg',
    addressLine1: 'Caso de los barcos de pesca y los peces frescos.',
    addressLine2: 'BARAK (2013)', //AUTOR DEL CASO
    reviews: Reviews.allReviews2,
  ),
  Location(
    name: 'CASO 3',
    urlImage: 'assets/img/case/caso3.jpg',
    addressLine1: 'Caso de la torre de Sostratus y el arquitecto.',
    addressLine2: 'BARAK (2006)', //AUTOR DEL CASO
    reviews: Reviews.allReviews3,
  ),
];
