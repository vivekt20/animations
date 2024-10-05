import 'package:flutter/material.dart';

class RotationTransitionExample extends StatefulWidget {
  @override
  _RotationTransitionExampleState createState() =>
        _RotationTransitionExampleState();

  
  }
  class _RotationTransitionExampleState extends State<RotationTransitionExample>
  with SingleTickerProviderStateMixin{
    AnimationController? _controller;
    Animation<double>? _Animation;

    @override
    void initState(){
      super.initState();
      _controller=AnimationController(duration: const Duration(seconds: 2),
      vsync: this,
      )..repeat();
      _Animation = Tween<double>(begin:0,end:1).animate(_controller!);
      
    }
    @override
    void dispose(){
      _controller!.dispose();
      super.dispose();
    }
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Rotation Transition Example'),
        ),
        body: Center(
          child: RotationTransition(
            turns: _Animation!,
            child:Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Center(
              child: Text("rotate",style: TextStyle(color: Colors.white),),
            ),
          ),
          
        )
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          if (_controller!.isAnimating){
            _controller!.stop();
          }else{
            _controller!.repeat();
            
          }
        },
        child: Icon(Icons.play_arrow),
        ),
        
      );
    }
  }
  
