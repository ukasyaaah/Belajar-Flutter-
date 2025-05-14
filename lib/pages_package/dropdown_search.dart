import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart' as my;
import 'package:http/http.dart' as http;

class DropdownSearch extends StatelessWidget {
  FutureOr<List<Map<String, dynamic>>> data = [
    {'Kota': 'Semarang', 'total': '1100'},
    {'Kota': 'Tegal', 'total': '14000'},
    {'Kota': 'Boyolali', 'total': '9000'},
    {'Kota': 'Batam', 'total': '2000'},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dropdown ')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              my.DropdownSearch<Map<String, dynamic>>(
                items: (filter, loadProps) => data,

                compareFn:
                    (item1, item2) => 'item1.${'Kota'}' == 'item2.${'total'}',

                popupProps: my.PopupProps.menu(
                  fit: FlexFit.loose,
                  showSearchBox: true,
                  itemBuilder:
                      (context, item, isDisabled, isSelected) =>
                          ListTile(title: Text(item['Kota'].toString())),
                ),
                dropdownBuilder: (context, selectedItem) {
                  if (selectedItem != null) {
                    return Text(
                      'Total penduduk ${selectedItem['Kota']} adalah ${selectedItem['total']}',
                    );
                  } else {
                    return Text('');
                  }
                },

                onChanged: (value) {
                  if (value != null) {
                    return print(
                      'Kota ${value['Kota']} berjumlah ${value['total']}',
                    );
                  } else {
                    return print('Dia Ga Milih Apapun');
                  }
                },

                /// Icon Suffix
                suffixProps: my.DropdownSuffixProps(
                  dropdownButtonProps: my.DropdownButtonProps(
                    iconClosed: Icon(Icons.keyboard_arrow_down),
                    iconOpened: Icon(Icons.keyboard_arrow_up),
                  ),
                  // Clear Button
                  clearButtonProps: my.ClearButtonProps(isVisible: true),
                ),
              ),

              SizedBox(height: 24),


            ],
          ),
        ),
      ),
    );
  }
}
