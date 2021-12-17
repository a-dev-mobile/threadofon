import 'package:flutter/material.dart';


class FavoritView extends StatelessWidget {
  const FavoritView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(title: const Text( 'Избранное'), ),
      body: const Center(child: Text('Экран % Избранное % в разработке. ',style: TextStyle(fontSize: 24),textAlign: TextAlign.center,),)
     
    );
  }
}
