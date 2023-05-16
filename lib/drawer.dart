import 'package:flutter/material.dart';
import 'package:green_life/screens/profile/profile_screen.dart';
import 'package:green_life/sheard.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
            },
            child: const UserAccountsDrawerHeader(
              accountName: Text("AppMaking.co"),
              accountEmail: Text("sundar@appmaking.co"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/47.jpg"),
                backgroundColor: kPrimaryColor,
              ),
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
            ),
          ),
          listTile(
            txt: 'Personal Data',
            leadingIcon: Icons.perm_contact_cal,
            trailingIcon: Icons.arrow_forward_ios_rounded,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
            },
          ),
          listTile(
            txt: 'Notification',
            leadingIcon: Icons.notifications_none,
            trailingIcon: Icons.arrow_forward_ios_rounded,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
            },
          ),
          listTile(
            txt: 'Change Password',
            leadingIcon: Icons.lock_outline,
            trailingIcon: Icons.arrow_forward_ios_rounded,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
            },
          ),
          listTile(
            txt: 'Privacy',
            leadingIcon: Icons.vpn_key_outlined,
            trailingIcon: Icons.arrow_forward_ios_rounded,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
            },
          ),
          listTile(
            txt: 'Security',
            leadingIcon: Icons.security,
            trailingIcon: Icons.arrow_forward_ios_rounded,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
            },
          ),
          listTile(
            txt: 'About us',
            leadingIcon: Icons.info_outline,
            trailingIcon: Icons.arrow_forward_ios_rounded,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
            },
          ),
          listTile(
            txt: 'Order History',
            leadingIcon: Icons.my_library_books_outlined,
            trailingIcon: Icons.arrow_forward_ios_rounded,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
            },
          ),
          listTile(
            txt: 'Help & Suppotrt',
            leadingIcon: Icons.phone,
            trailingIcon: Icons.arrow_forward_ios_rounded,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 24),
            child: sharedText(txt: 'Sign Out',color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
