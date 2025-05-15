import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/banners/page2.png', height: 300,),

            SizedBox(height: 20),
              Text(
                "Second page",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text("This is the second page"),
              SizedBox(height: 30),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(),
                  _buildDot(is_active: true),
                  _buildDot(),
                ],
              ),

              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: Text('Go to the First Page'),
              ),

          ],
        ),
      )
      ),
    );
  }

  Widget _buildDot({bool is_active = false}){
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: is_active ? 16 : 8,
        height: 8,

        decoration: BoxDecoration(
          color: is_active ? Colors.blue : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(5)
        ),      
      );
  }

}