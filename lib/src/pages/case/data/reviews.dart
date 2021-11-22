import 'package:siteach/src/pages/case/model/review.dart';

class Reviews {
  static List<Review> allReviews = [
    Review(
      date: 'Caso 1',
      username: 'Descripción del caso',
      urlImage: 'assets/img/case/question.png',
      description:
          'En la sala de espera de un aeropuerto, un vendedor de globos de helio notó que muchos de estos globos se soltaban involuntariamente de las manos de las personas.\n\nEstos globos se elevaban en el techo, muy alto.\n\nEl vendedor quiere aprovechar por las noches para recuperar los globos del techo y revenderlos.\n\nEntonces, ¿Qué podría hacer para recuperar los globos?',
    ),
    Review(
      date: 'Multiplicación',
      username: 'Solución inventiva',
      urlImage: 'assets/img/case/answer.png',
      description:
          'Un vendedor de globos usa un globo con un cordón largo para recuperar los globos apilados en el techo alto.',
    ),
  ];
  static List<Review> allReviews2 = [
    Review(
      date: 'Caso 2',
      username: 'Descripción del caso',
      urlImage: 'assets/img/case/question.png',
      description:
          'Las enormes piscinas ubicadas en los barcos de pesca se utilizan para almacenar el pescado capturado en el mar mientras se transporta a tierra.\n\nPara conservar su delicado sabor, los peces deben ser obligados a nadar rápidamente dentro de las piscinas, como en mar abierto.\n\n¿Puede sugerir una solución a este problema?',
    ),
    Review(
      date: 'Multiplicación',
      username: 'Solución inventiva',
      urlImage: 'assets/img/case/answer.png',
      description:
          'Una solución innovadora al problema de los peces es agregar a la piscina un tiburón bebé, que es simplemente otro tipo de pez que se encuentra a menudo en las redes de los pescadores.',
    ),
  ];
  static List<Review> allReviews3 = [
    Review(
      date: 'Caso 3',
      username: 'Descripción del caso',
      urlImage: 'assets/img/case/question.png',
      description:
          'El Faro de Alejandría fue construido en el siglo III a. C. y se considera una de las Siete Maravillas del Mundo. Sostratus, el arquitecto del faro, quería que su nombre se perpetrara en el diseño del faro.\n\nEsto no fue permitido por Ptolomeo II, el rey de Egipto, quien prohibió que su nombre fuera grabado en la enorme estructura.\n\nEntonces, ¿Cómo podría el arquitecto solucionar este problema?',
    ),
    Review(
      date: 'Multiplicación',
      username: 'Solución inventiva',
      urlImage: 'assets/img/case/answer.png',
      description:
          'La historia nos cuenta que primero, el arquitecto talló su nombre debajo del faro, lo cubrió con yeso y luego talló el nombre del Rey. Después de varios años, el yeso que llevaba el nombre del Rey se desintegró y el nombre de Sostratus apareció a todos.',
    ),
  ];
}
