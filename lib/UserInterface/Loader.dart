import 'dart:math';
import 'package:flutter/material.dart';

class Loader extends StatefulWidget{
  @override
  LoaderState createState() => new LoaderState();
}

class LoaderState extends State<Loader> with SingleTickerProviderStateMixin
{
  AnimationController controller;
  Animation<double> animationRotation;
  Animation<double> animationRadiusIn;
  Animation<double> animationRadiusOut;
  final double initialRadius = 25.0;

  double _radius = 0.0;
  
  @override
  void initState()
  {
    super.initState();
    controller = new AnimationController(duration: new Duration(milliseconds: 5000), vsync: this);

    animationRotation = Tween<double>(
      begin: 0.0, 
      end: 1.0
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.0, 1.0, curve: Curves.linear)
      )
    );

    animationRadiusIn = new Tween<double>(
      begin: 1.0,
      end: 0.0
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.75, 1.0, curve: Curves.elasticIn)
      )
    );

    animationRadiusOut = new Tween<double>(
      begin: 0.0,
      end: 1.0
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.0, 0.25, curve: Curves.elasticOut)
      )
    );

    controller.addListener((){
      setState(() {
        if(controller.value >= 0.75 && controller.value <= 1.0)
          _radius = animationRadiusIn.value * initialRadius;
        else if(controller.value >= 0.0 && controller.value <= 0.25)
          _radius = animationRadiusOut.value * initialRadius;
      });      
    });


    controller.repeat();
  }

  @override
  void dispose()
  {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return new Container( 
      width: 100.0,
      height: 100.0, 
      child: Center(
        child: RotationTransition(
          turns: animationRotation,
          child: Stack(
            children: <Widget>[
              Dot(
                radius: 30.0,
                color: Colors.black12
              ),
              Transform.translate(
                offset: Offset(_radius * cos(pi/4), _radius * sin(pi/4)),
                child: Dot(
                  radius: 5.0,
                  color: Colors.blue[50]
                ),
              ),
              Transform.translate(
                offset: Offset(_radius * cos(2 * pi/4), _radius * sin(2 * pi/4)),
                child: Dot(
                  radius: 5.5,
                  color: Colors.blue[100]
                ),
              ),
              Transform.translate(
                offset: Offset(_radius * cos(3 * pi/4), _radius * sin(3 * pi/4)),
                child: Dot(
                  radius: 6.0,
                  color: Colors.blue[200]
                ),
              ),
              Transform.translate(
                offset: Offset(_radius * cos(4 * pi/4), _radius * sin(4 * pi/4)),
                child: Dot(
                  radius: 6.5,
                  color: Colors.blue[300]
                ),
              ),
              Transform.translate(
                offset: Offset(_radius * cos(5 * pi/4), _radius * sin(5 * pi/4)),
                child: Dot(
                  radius: 7.0,
                  color: Colors.blue[400]
                ),
              ),
              Transform.translate(
                offset: Offset(_radius * cos(6 * pi/4), _radius * sin(6 * pi/4)),
                child: Dot(
                  radius: 7.5,
                  color: Colors.blue
                ),
              ),
              Transform.translate(
                offset: Offset(_radius * cos(7 * pi/4), _radius * sin(7 * pi/4)),
                child: Dot(
                  radius: 8.0,
                  color: Colors.blue[600]
                ),
              ),
              Transform.translate(
                offset: Offset(_radius * cos(8 * pi/4), _radius * sin(8 * pi/4)),
                child: Dot(
                  radius: 8.5,
                  color: Colors.blue[700]
                ),
              )
            ],
          )
        )
      ),   
    );
  }

}

class Dot extends StatelessWidget {

  final double radius;
  final Color color;

  Dot({this.radius, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: this.radius,
        height: this.radius,
        decoration: BoxDecoration(
          color: this.color,
          shape: BoxShape.circle
        ),
      ),
    );
  }
}