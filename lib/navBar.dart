import 'package:flutter/material.dart';
import 'package:insume/emergencyContacts.dart';
import 'package:insume/insuranceInfo.dart';
import 'package:insume/personalInfo.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        children: [
          _buildMenuItem(
            context: context,
            icon: Icons.home,
            title: 'Home',
            subItems: [
              {'icon': Icons.sos_rounded, 'title': 'Emergency SOS button'},
              {
                'icon': Icons.location_on,
                'title': 'Location',
                'subItems': [
                  {
                    'icon': Icons.call,
                    'title': 'Call 911 (or local emergency number)'
                  },
                  {
                    'icon': Icons.broadcast_on_personal_outlined,
                    'title': 'Broadcast my location to emergency contacts'
                  },
                  {
                    'icon': Icons.search,
                    'title': 'Find nearest Hospital/Medical centers'
                  },
                ],
              },
              {'icon': Icons.phone, 'title': 'Quick Contacts'},
            ],
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.headset_mic_rounded,
            title: 'Service',
            subItems: [
              {'icon': Icons.car_crash, 'title': 'Accident'},
              {'icon': Icons.local_hospital_outlined, 'title': 'Medical'},
              {'icon': Icons.directions_car, 'title': 'Road Assistance'},
            ],
          ),
          _buildMenuItem(
            context: context,
            icon: Icons.person_pin,
            title: 'My Profile',
            subItems: [
              {'icon': Icons.person, 'title': 'Personal Information'},
              {'icon': Icons.contact_page, 'title': 'Emergency Contacts'},
              {
                'icon': Icons.file_copy_rounded,
                'title': 'Insurance Information'
              },
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required List<Map<String, dynamic>> subItems,
  }) {
    return ExpansionTile(
      leading: Icon(icon),
      title: Text(title),
      children: subItems.map((subItem) {
        if (subItem.containsKey('subItems')) {
          // This is a sub-item with sub-subitems.
          final subSubItems = subItem['subItems'] as List<Map<String, dynamic>>;
          return _buildMenuItem(
            context: context,
            icon: subItem['icon'],
            title: subItem['title'],
            subItems: subSubItems,
          );
        } else {
          // This is a regular sub-item.
          return ListTile(
            leading: Icon(subItem['icon']),
            title: Text(subItem['title']),
            onTap: () {
              _navigateToScreen(context, subItem['title']);
            },
          );
        }
      }).toList(),
    );
  }

  void _navigateToScreen(BuildContext context, String title) {
    switch (title) {
      case 'Personal Information':
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PersonalInfo(),
        ));
        break;
      case 'Emergency Contacts':
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EmerContacts(),
        ));
        break;
      case 'Insurance Information':
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => InsuranceInfo(),
        ));
        break;
    }
  }
}
