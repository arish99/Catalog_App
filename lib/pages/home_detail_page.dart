import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              '\$${catalog.price}'.text.bold.xl4.red800.make(),
              ElevatedButton(
                onPressed: () {},
                child: 'Add to cart'.text.make(),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(StadiumBorder()),
                    backgroundColor:
                        MaterialStateProperty.all(context.theme.buttonColor)),
              ).wh(120, 50)
            ],
          ).p32(),
        ),
        backgroundColor: context.canvasColor,
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                      child: Image.network(catalog.image),
                      tag: Key(catalog.id.toString()))
                  .h32(context),
              Expanded(
                  child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl4
                          .color(context.accentColor)
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle!)
                          .color(context.accentColor)
                          .xl
                          .make(),
                      10.heightBox,
                      'Amet clita amet justo kasd diam diam dolor, stet at dolor clita at at sed erat, dolor lorem clita rebum clita, nonumy et duo labore lorem, amet vero ut amet rebum sed at ipsum, eos elitr invidunt at invidunt et eirmod elitr elitr, sadipscing kasd rebum diam duo justo eirmod.'
                          .text
                          .textStyle(context.captionStyle!)
                          .make()
                          .p16()
                    ],
                  ).py32(),
                ),
              ))
            ],
          ),
        ));
  }
}
