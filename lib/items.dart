import 'package:flutter/material.dart';

class ItemButton extends StatelessWidget {
  final String pagename;
  final IconData pageicon;
  final bool currentSelected;
  final VoidCallback onTap;

  const ItemButton(
      {super.key,
      required this.pagename,
      required this.pageicon,
      required this.currentSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              pageicon,
              size: 25,
              color: currentSelected ? Colors.white : Colors.black,
            ),
            Text(
              pagename,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  color: currentSelected ? Colors.white : Colors.black,
                  fontWeight:
                      currentSelected ? FontWeight.bold : FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
