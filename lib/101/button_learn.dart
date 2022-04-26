import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:  [
          TextButton(
            onPressed: (){}, 
          child: Text('Hello', style: Theme.of(context).textTheme.subtitle1),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states){
              if (states.contains(MaterialState.pressed)) {
                return Colors.green[200];
                
              }
              return Colors.purple[300];
            }) ),
          ),
           ElevatedButton(
             onPressed: () {}, 
           child: const Text('Save')),
           IconButton(
             onPressed: () {}, 
           icon: const Icon(Icons.account_balance_rounded)),
           FloatingActionButton(
             onPressed: () {
             // butona basılıp yapılan işlemler 
             //servise istek at
             // sayfanın rengini düzenle
           },
           child: const Icon(Icons.add),),
           
           OutlinedButton(
             style: OutlinedButton.styleFrom(
               backgroundColor: Colors.amber[300],
               padding: const EdgeInsets.all(10),
               shape: const RoundedRectangleBorder()
             ),
             onPressed: () {}, 
           child: const SizedBox(
             width: 200, 
             child: Text('data'))),
           OutlinedButton.icon(
             onPressed: (){}, 
           icon: const Icon(Icons.account_box), 
           label: const Text('Smile')),
           //InkWell widget => variable'ı basılabilir hale getirir.
           InkWell(onTap: (){}, 
           child: const Text('custom')),
           Container(
             height: 200,
             color: Colors.white70,
           ),
           const SizedBox(height: 10,),
           ElevatedButton(
             
             style: ElevatedButton.styleFrom(
               primary: Colors.black87,
                shape:const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                )),
             onPressed: () {}, 
             
             child: Padding(
               padding: const EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
               child: Text('Place Bid', 
           style: Theme.of(context).textTheme.headline4,),
             ))

        ],
      ),
    );
  }
}

//Borders:
// CircleBorder(), RoundedRectangleBorder()