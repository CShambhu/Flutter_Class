import 'package:flutter/material.dart';

class DesignScreen extends StatefulWidget {
  const DesignScreen({super.key});

  @override
  State<DesignScreen> createState() => _DesignScreenState();
}

class _DesignScreenState extends State<DesignScreen> {
  bool _notificationSwitch = true;
  bool _darkModeSwitch = false;
  bool _agreeCheck = false;
  bool _subsribeCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            Icon(Icons.person, color: Colors.white,),
            SizedBox(
              width: 8,
            ),
            Text('User Settings',
            style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
            children: [
              Center(
                child: Icon(
                  Icons.account_circle,
                  size: 72,
                  color: Colors.grey,
                ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8) ,
                child: Text("Username"),),
                TextField(
                  decoration: InputDecoration(
                    hintText: "enter your name",
                border: OutlineInputBorder(),
                
                  ),
                ),

                   Padding(
                     padding: EdgeInsets.symmetric(vertical: 8),
                     child: Text("Email"),
                   ),
                // ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "enter your email",
                border: OutlineInputBorder(),
                
                  ),
                ),
                Row(
                  children: [
                    Icon(  
                      Icons.notifications_on,
                      color: Colors.grey,
                    ),
        
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Notifications"),
                    ),
        
                    Spacer(),
        
                    Switch(value: _notificationSwitch, 
                    onChanged: (val) => setState(() {
                    _notificationSwitch = val ;
                    })),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.dark_mode,
                      color: Colors.grey,
                    ),
        
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Dark mode"),
                    ),
        
                    Spacer(),
        
                    Switch(value: _darkModeSwitch,
                    onChanged: (val) => setState(() {
                      _darkModeSwitch = val;
                    }))
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: _agreeCheck,
                     onChanged: (val) => setState(() {
                       _agreeCheck = val!;
                     })),
                     Text("I agree to terms & conditions"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: _subsribeCheck,
                     onChanged: (val) => setState(() {
                      _subsribeCheck = val!;
                     })),
                     Text("Subscribe to newsletter"),
                  ],
                ),

                ElevatedButton(onPressed: () => print("photo uploaded") ,
                 child: Row(
                   children: [
                    Icon(Icons.image),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: 8),
                       child: Text("Tap to choose a profile photo"),
                     ),
                   ],
                 )),


                Center(
                  child: ElevatedButton(onPressed:()=> print("the button was clicked"),
                    child: Text("Save Changes"),     
                      ),
                ),
            ],
        ),
      ),
    );
  }
}

