import 'package:flutter/material.dart';

class TweenAnimationBuilderExample extends StatefulWidget{
  @override
  _TweenAnimationBuilderExampleState createState()=>
     _TweenAnimationBuilderExampleState();
}
class _TweenAnimationBuilderExampleState extends State<TweenAnimationBuilderExample>{
  bool _isLarge =false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("TweenAnimationBuilder Example"),
      ),
      body: Center(
        child: TweenAnimationBuilder(tween: Tween<double>(begin: 100,end: _isLarge? 200 : 100),
         duration: Duration(seconds: 1),
          builder: (context,size,child){
            return Container(
              width: size,
              height: size,
              color: Colors.blue,
              child: child,
            );
          },
          child: Center(
            child: Text('Animate',style: TextStyle(color: Colors.white),),
          ),
          ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _isLarge=!_isLarge;
        });
      },
      child: Icon(Icons.play_arrow),
      ),
    );
  }
  

  
}