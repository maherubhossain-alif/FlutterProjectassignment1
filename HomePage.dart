import 'package:flutter/material.dart';



class Homepage extends StatelessWidget{

  const Homepage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Greeting App '),

      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          Text('Hello, World', style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight .bold,
            
          ),),
          Text('Welcome to flutter!', style: TextStyle(
            fontSize: 20,

            color: Colors.black,
          ),),
            const SizedBox(height: 20),
          Image.asset('asset/logo.png',
            height: 200,
            width: 200,
            fit: BoxFit .cover,

          ),
            const SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  )
                ),
                onPressed: (){ ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button Pressed!')),
                );
                }, child: Text('Press me') ),
        ],
      ),
      ),
    );
  }

}