import 'package:flutter/material.dart';

void main(){
  var themeData = ThemeData(
      primarySwatch: Colors.green,
    );
  runApp(MaterialApp(
    title: "First App",
    home: HomePage(),
    theme: themeData
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
      ),
      body: Container(),
      drawer: Drawer(
        // backgroundColor: Colors.purple,
        child: ListView(
          children: <Widget>[
            // DrawerHeader(
            //   child: Text(
            //     "hello",
            //     style: TextStyle(color:Colors.white),
            //     ),
            //   decoration: BoxDecoration(color: Colors.purple
            //   ),
            //   ),
            UserAccountsDrawerHeader(
              accountName: Text("Roshan kc"),
            accountEmail: Text("roshan@gmail.com"),
            currentAccountPicture:
            CircleAvatar(
                backgroundImage:
                    NetworkImage(''),
                // backgroundColor: Colors.transparent,
              )
            ),
              ListTile(
                leading: Icon(Icons.person),
                // ignore: prefer_const_constructors
                title: Text("Account"),
                subtitle: Text("Personal"),
                trailing: Icon(Icons.edit),
              ),
               ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text("roshan@gmail.com"),
                trailing: Icon(Icons.send),
              )
          ],
        ),
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.edit),
        backgroundColor: Colors.lightBlue,
        ),
    );
  }
}