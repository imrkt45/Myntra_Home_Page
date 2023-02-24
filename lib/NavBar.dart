import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('SHOP FOR'),
          ),
          Card(
            child: ListTile(
              title: Text('Men'),
              leading: Icon(Icons.man),
              onTap: () {},
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.woman),
              title: Text('Women'),
              onTap: () {},
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Card(
            child: ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.boy),
              title: Text('Kids'),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.home),
              title: Text('Home & Living'),
              onTap: () {},
            ),
          ),
          Card(
            child: ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.face),
              title: Text('Beauty'),
              onTap: () {},
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('My Account'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('My Orders'),
            onTap: () {},
            trailing: Container(
              width: 20.0,
              height: 20.0,
              color: Colors.red,
              child: Center(
                child: Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text('Gift Cards'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Shoping Group'),
            onTap: () {},
          ),
          Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
              )),
        ],
      ),
    );
  }
}
