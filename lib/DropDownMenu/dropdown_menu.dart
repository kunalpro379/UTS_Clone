import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatelessWidget {
  final String? title;
  final List<String> items;
  final String selectedItem;
  final Function(String)? onChanged;

  const CustomDropdownMenu({
    Key? key,
    this.title,
    required this.items,
    required this.selectedItem,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        DropdownButton<String>(
          value: selectedItem,
          onChanged: onChanged == null
              ? null
              : (String? value) {
                  if (value != null) {
                    onChanged!(value);
                  }
                },
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(item),
              ),
            );
          }).toList(),
          underline: Container(
            height: 1,
            color: Colors.transparent, // Set the color to transparent
          ),
          isExpanded: true, // Allow the dropdown button to expand horizontally
          icon: Icon(Icons.arrow_drop_down), // Set the drop-down icon
          iconSize: 24, // Set the size of the drop-down icon
          iconEnabledColor: Colors.black, // Set the color of the drop-down icon
        ),
      ],
    );
  }
}
