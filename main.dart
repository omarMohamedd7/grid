import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grido/widgets/card.dart';

void main() {
  runApp(const grido());
}

class grido extends StatelessWidget {
  const grido({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});
  final List data = [
    {"name":"Software"},{"name":"Support"},{"name":"graphics "},{"name":"marketing"},{"name":"video editing"},{"name":"our services"}
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("grid"),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
            child: GridView.builder(
              
                clipBehavior: Clip.none,
                itemCount: data.length,
                
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 35),
                itemBuilder: (context, index) {
                  return card(txt: data[index]["name"],);
                })));
  }

  //  child: Image.network(
  //     "https://media.businessex.com/article/pics/0130/Qe3mb1qPTCyZGJDwLPu2rSAIfpLMNMcLBpswJqMo.jpeg",
  //     height: 250,
  //     width: 150,
  //   ),
}
