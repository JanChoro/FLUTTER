import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetalleLueagues extends StatelessWidget {
  DetalleLueagues({super.key, required this.liga});
  dynamic liga;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                collapseMode: CollapseMode.parallax,
                title: Text(liga.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    )),
                background: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ_ZbX84cnTZJg2x9uiGj-D2aGiZPyBQfK1A&usqp=CAU",
                  fit: BoxFit.cover,
                )),
          ),
        ];
      },
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Hero(
                tag: liga,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(liga.logos),
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "                  Federación:  ",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: AutofillHints.addressCity,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(225, 6, 33, 185),
                          ),
                        ),
                        Text(
                          liga.slug,
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: AutofillHints.addressCity,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const Text("Categoría:    ",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: AutofillHints.addressCity,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 17, 206, 11),
                            )),
                        Text(liga.abbr),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
