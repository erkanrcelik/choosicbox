import 'package:choosicbox/utils/ui/switch/switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsCard extends StatefulWidget {
  SettingsCard(
      {super.key, required this.title, this.isSwitched, this.onTap, this.icon});

  final String title;
  Widget? icon;
  VoidCallback? onTap;
  bool? isSwitched = false;

  @override
  _SettingsCardState createState() => _SettingsCardState();
}

class _SettingsCardState extends State<SettingsCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              widget.icon != null
                  ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: widget.icon,
                      ),
                    )
                  : Container(),
              SizedBox(width: 10.w),
              Text(
                widget.title,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
          widget.isSwitched == true
              ? CustomSwitch()
              : Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).colorScheme.primary,
                ),
        ],
      ),
    );
  }
}
