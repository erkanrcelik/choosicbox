import 'package:flutter/material.dart';

class SecuritySettingsScreen extends StatefulWidget {
  @override
  _SecuritySettingsScreenState createState() => _SecuritySettingsScreenState();
}

class _SecuritySettingsScreenState extends State<SecuritySettingsScreen> {
  bool _enableBiometricAuth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Security Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Biometric Authentication',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: Text('Enable Biometric Authentication'),
              value: _enableBiometricAuth,
              onChanged: (value) {
                setState(() {
                  _enableBiometricAuth = value;
                });
              },
            ),
            SizedBox(height: 16),
            Text(
              'Change PIN',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement logic to navigate to the change PIN screen
              },
              child: Text('Change PIN'),
            ),
            SizedBox(height: 16),
            Text(
              'Logout',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement logout logic here
                // You can navigate to the login screen or clear user data
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}