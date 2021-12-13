import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            currentAccountPicture: Image.asset(
              'assest/rosn.jpg',
              )
            // currentAccountPicture: CircleAvatar(
            //   backgroundImage: NetworkImage('assest/rosn.jpg'),
            // ),
            ),
              ListTile(
                leading: Icon(Icons.person),
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
        );
  }
}