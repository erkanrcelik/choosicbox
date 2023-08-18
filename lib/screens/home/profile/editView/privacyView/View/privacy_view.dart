import 'package:flutter/material.dart';


class PrivacySettingsScreen extends StatefulWidget {
  @override
  _PrivacySettingsScreenState createState() => _PrivacySettingsScreenState();
}

class _PrivacySettingsScreenState extends State<PrivacySettingsScreen> {
  bool _allowLocation = false;
  bool _enableNotifications = true;
  bool _shareData = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: Text('Allow Location'),
              value: _allowLocation,
              onChanged: (value) {
                setState(() {
                  _allowLocation = value;
                });
              },
            ),
            SizedBox(height: 16),
            Text(
              'Notifications',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: Text('Enable Notifications'),
              value: _enableNotifications,
              onChanged: (value) {
                setState(() {
                  _enableNotifications = value;
                });
              },
            ),
            SizedBox(height: 16),
            Text(
              'Data Sharing',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: Text('Share Data for Analytics'),
              value: _shareData,
              onChanged: (value) {
                setState(() {
                  _shareData = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}