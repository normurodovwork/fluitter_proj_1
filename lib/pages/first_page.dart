import 'package:flutter/material.dart';
import 'second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/banners/page1.png', height: 300),
              SizedBox(height: 20),
              Text(
                "First page",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text("This is the first page"),
              SizedBox(height: 30),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(is_active: true),
                  _buildDot(),
                  _buildDot(),
                ],
              ),

              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text('Go to the Second Page'),
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDot({bool is_active = false}){
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: is_active ? 16 : 8,
        height: 8,

        decoration: BoxDecoration(
          color: is_active ? Colors.pink : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(5)
        ),      
      );
  }

}


