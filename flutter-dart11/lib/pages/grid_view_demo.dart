import 'package:flutter/material.dart';

import 'my_card.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     int count=0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Grid View"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.red),
                padding: EdgeInsets.all(6.0),
                child: MyCard(
                  title:'Flutter',
                  subTitle: 'Version 2.5',
                  icon:Icons.home ,
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.red),
                padding: EdgeInsets.all(6.0),
                child: MyCard(
                  title:'React Typescript',
                  subTitle: 'Version 11.5',
                  icon:Icons.home ,
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.red),
                padding: EdgeInsets.all(6.0),
                child: MyCard(
                  title:'PHP/Laravel Framework',
                  subTitle: 'Version 12.5',
                  icon:Icons.home ,
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.red),
                padding: EdgeInsets.all(6.0),
                child: MyCard(
                  title:'Nest Framework',
                  subTitle: 'Version 13.5',
                  icon:Icons.access_time_filled_sharp ,
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.purple,shape: BoxShape.circle),
                padding: EdgeInsets.all(6.0),
                child: MyCard(
                  title:'ASP Framework',
                  subTitle: 'Version 13.5',
                  icon:Icons.api ,
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.red),
                padding: EdgeInsets.all(6.0),
                child: MyCard(
                  title:'Gin Framework',
                  subTitle: 'Version 13.5',
                  icon:Icons.remove_done ,
                ),
              ),
              Container(
                child: Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      count = count+1;
                      debugPrint('${count}');
                    },
                    child: const SizedBox(
                      width: 300,
                      height: 100,
                      child: Text('A card that can be tapped {count}'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
