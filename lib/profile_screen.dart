import 'package:flutter/material.dart';
import 'package:vietasy/sign_in.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Profile"),
      ),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/7cho.jpeg'),
            ),
          ),
          Text(
            "B.O.A.T",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
          ),
          SizedBox(height: 10,),
          Card(
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: const ListTile(
              leading: Icon(
                Icons.edit,
                color: Colors.black54,
              ),
              title: Text(
                'Edit Profile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black54,
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: const ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black54,
              ),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black54,
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => SignIn()),
                    (route) => false,
              );
            },
            child: Card(
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: const ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.black54,
                ),
                title: Text(
                  'Log out',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
