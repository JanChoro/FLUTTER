import 'package:api_soccer_world_leagues/api/leagues.dart';
import 'package:flutter/material.dart';

class Fifa extends StatelessWidget {
  const Fifa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FifaPresenter(pages: [
        FifaModel(
          title: 'API de la FIFA',
          description: 'Bienvenido a la API de la fifa, aquí, encontrará las ligas más importante en el mundo del balompié',
          imageUrl: 'data:image/png;base64,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',
          bgColor: Color.fromARGB(255, 24, 41, 194),
          
        ),]),
    );
  }
}

class FifaPresenter extends StatefulWidget {
  final List<FifaModel> pages;
  final VoidCallback? onSkip;
  final VoidCallback? onFinish;

  const FifaPresenter(
      {Key? key, required this.pages, this.onSkip, this.onFinish})
      : super(key: key);

  @override
  State<FifaPresenter> createState() => _FifaState();
}

class _FifaState extends State<FifaPresenter> {
  // Store the currently visible page
  int _currentPage = 0;
  // Define a controller for the pageview
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        color: widget.pages[_currentPage].bgColor,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                // Pageview to render each page
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: widget.pages.length,
                  onPageChanged: (idx) {
                    // Change current page when pageview changes
                    setState(() {
                      _currentPage = idx;
                    });
                  },
                  itemBuilder: (context, idx) {
                    final item = widget.pages[idx];
                    return Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Image.network(
                              item.imageUrl,
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(item.title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: item.textColor,
                                        )),
                              ),
                              Container(
                                constraints:
                                    const BoxConstraints(maxWidth: 280),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0, vertical: 8.0),
                                child: Text(item.description,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(
                                          color: item.textColor,
                                        )),
                              )
                            ]))
                      ],
                    );
                  },
                ),
              ),

              // Current page indicator
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: widget.pages
              //       .map((item) => AnimatedContainer(
              //             duration: const Duration(milliseconds: 250),
              //             width: _currentPage == widget.pages.indexOf(item)
              //                 ? 30
              //                 : 8,
              //             height: 8,
              //             margin: const EdgeInsets.all(2.0),
              //             decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 borderRadius: BorderRadius.circular(10.0)),
              //           ))
              //       .toList(),
              // ),

              // Bottom buttons
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          visualDensity: VisualDensity.comfortable,
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Leagues()));
                      },
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Empezar"
                          ),
                          const SizedBox(width: 8),
                          Icon(_currentPage == widget.pages.length - 1
                              ? Icons.done
                              : Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FifaModel {
  final String title;
  final String description;
  final String imageUrl;
  final Color bgColor;
  final Color textColor;

  FifaModel(
      {required this.title,
      required this.description,
      required this.imageUrl,
      this.bgColor = Colors.blue,
      this.textColor = Colors.white});
}
