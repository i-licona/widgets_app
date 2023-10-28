import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imgUrl;
  SlideInfo(this.title, this.caption, this.imgUrl);
}

final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'lorem ipsum dolor sit amet', 'assets/images/1.png'),
  SlideInfo('Entrga rapida', 'lorem ipsum dolor sit amet', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'lorem ipsum dolor sit amet', 'assets/images/3.png'),
];





class AppTutorialScreen extends StatefulWidget {
  static const name = 'app_tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  late final PageController pageviewController = PageController();
  bool endTutorial = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageviewController.addListener(() { 
      final page = pageviewController.page ?? 0;
      if (!endTutorial && page >= (slides.length - 1.5) ){
        setState(() {
          endTutorial = true;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map((slide) => _Slide(info: slide,)).toList(),
          ),
          Positioned(
            right: 20,
            top: 40,
            child: TextButton(
              child: const Text('Salir'),
              onPressed: () => context.pop(),
            ),
          ),
          endTutorial ?
          Positioned(
            bottom: 40,
            right: 20,
            child: FilledButton(
              child: const Text('Comenzar'),
              onPressed: () => context.pop(),
            ),
          ): const SizedBox()
        ],
      ), 
    );
  }
}

class _Slide extends StatelessWidget {
  final SlideInfo info;
  const _Slide({required this.info});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.titleMedium;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage( info.imgUrl ), ),
            const SizedBox(height: 20,),
            Text(info.title, style: titleStyle,),
            const SizedBox(height: 10),
            Text(info.caption, style: captionStyle,),
          ],
        ),
      ),
    );
  }
}