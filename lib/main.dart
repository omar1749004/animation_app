// import 'package:flutter/material.dart';
// //import 'package:animate_do/animate_do.dart'; // Optional: for nicer animations (add in pubspec.yaml)

// void main() {
//   runApp(const AnimationApp());
// }

// class AnimationApp extends StatelessWidget {
//   const AnimationApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MovieHomePage(),
//     );
//   }
// }

// class MovieHomePage extends StatefulWidget {
//   const MovieHomePage({super.key});

//   @override
//   State<MovieHomePage> createState() => _MovieHomePageState();
// }

// class _MovieHomePageState extends State<MovieHomePage> {
//   final PageController _pageController = PageController(viewportFraction: 0.6);
//   double currentPage = 0.0;

//   final List<String> movieImages = [
//     "https://image.tmdb.org/t/p/w500/ulzhLuWrPK07P1YkdWQLZnQh1JL.jpg",
//     "https://image.tmdb.org/t/p/w500/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
//     "https://image.tmdb.org/t/p/w500/74xTEgt7R36Fpooo50r9T25onhq.jpg",
//     "https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg",
//     "https://image.tmdb.org/t/p/w500/9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg",
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _pageController.addListener(() {
//       setState(() {
//         currentPage = _pageController.page ?? 0.0;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: const Text('Movies', style: TextStyle(color: Colors.white)),
//       ),
//       body: Center(
//         child: SizedBox(
//           height: 400,
//           child: PageView.builder(
//             controller: _pageController,
//             itemCount: movieImages.length,
//             itemBuilder: (context, index) {
//               double scale = (1 - (currentPage - index).abs() * 0.3).clamp(0.7, 1.0);
//               return Transform.scale(
//                 scale: scale,
//                 child: AnimatedContainer(
//                   duration: const Duration(milliseconds: 300),
//                   margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     image: DecorationImage(
//                       image: NetworkImage(movieImages[index]),
//                       fit: BoxFit.cover,
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.5),
//                         blurRadius: 10,
//                         offset: const Offset(0, 5),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:math';

import 'package:animation/anim_controller.dart';
import 'package:animation/implicit/im_home.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const AnimationApp());
}

class AnimationApp extends StatelessWidget {
  const AnimationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 100;

  double width = 120;

  BorderRadiusGeometry radise = BorderRadius.circular(8);

  bool vasible = true;

  Color color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "Positions": (context) => Positions(), 
      "animtionController" : (context)=> AnimControllerPage() ,
      "implict" : (context)=> ImHome(),
      },

      initialRoute: "implict",

      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(),

        body: Center(
          child: AnimatedOpacity(
            opacity: vasible == true ? 1 : 0,

            duration: Duration(seconds: 1),

            child: AnimatedContainer(
              curve: Curves.linear,

              duration: Duration(seconds: 1),

              height: height,

              width: width,

              decoration: BoxDecoration(color: color, borderRadius: radise),
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Random random = Random();

            random.nextInt(100);

            vasible = !vasible;

            height = random.nextInt(150).toDouble();

            width = random.nextInt(200).toDouble();

            radise = BorderRadius.circular(random.nextInt(100).toDouble());

            //  color = Color.fromRGBO(

            //   random.nextInt(256), random.nextInt(256), random.nextInt(256), opacity

            //   );

            setState(() {});
          },

          child: Icon(Icons.flip),
        ),
      ),
    );
  }
}
