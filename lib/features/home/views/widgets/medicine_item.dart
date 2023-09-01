import 'package:flutter/material.dart';

class MedicineItem extends StatelessWidget {
  const MedicineItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: const Text(
              'take your medicine to treat illness',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'before meal',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            trailing: FittedBox(
              fit: BoxFit.none,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      size: 25,
                    ),
                    color: Colors.black,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                      size: 25,
                    ),
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '8/31/2023',
            style: TextStyle(color: Colors.black.withOpacity(0.5)),
          ),
        ]),
      ),
    );
  }
}
