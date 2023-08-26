import 'package:flutter/material.dart';

class SwitchRowListTile extends StatefulWidget {
  SwitchRowListTile({
    Key? key,
    required this.title,
    required this.onTap,
    required this.image,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;
  final String image;

  @override
  _SwitchRowListTileState createState() => _SwitchRowListTileState();
}

class _SwitchRowListTileState extends State<SwitchRowListTile> {
  bool _selected = false;
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        color: _enabled ? (_selected ? Colors.green : Colors.white) : Colors.red,
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text(widget.title),
          subtitle: Text('Enabled: $_enabled, Selected: $_selected'),
          trailing: Switch(
            onChanged: (bool value) {
              setState(() {
                _enabled = value;
                if (!_enabled) {
                  _selected = false;
                }
              });
            },
            value: _enabled,
          ),
        ),
      ),
    );
  }
}
