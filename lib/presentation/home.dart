import 'package:flutter/material.dart';
import 'package:task1/presentation/components/raw_appbar.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: rawAppBar(height, 'Главная'),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            rawCard('4 квадрата',()=>Navigator.pushNamed(context, '/foursquares')),
            rawCard('Цветной список',(){}),
            rawCard('Codelab',(){}),
            rawCard('Асинхронный запрос',(){}),
          ],
        ),
      ),
    );
  }

}

Widget rawCard(String text,onPressed){
  return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        splashColor: Colors.grey,
        highlightColor: Colors.grey,
        child: Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.15)
          ),
          child: Card(
            color: Colors.white,
            elevation: 30.0,
            shadowColor: Colors.grey.withOpacity(0.3),
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                        text,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 19.0,
                            fontFamily: 'OpenSans-SemiBold'
                        )
                    )
                ),
                const Spacer(),
                const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    )
                )
              ],
            ),
          ),
        ),
        onTap: onPressed,
      )
  );
}