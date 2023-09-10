import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/provider/color_provider.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({super.key});

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ColorProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Example 1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<ColorProvider>(builder: (context, value, child) {
            return Slider(
                min: 0.0,
                max: 1.0,
                value: provider.value,
                onChanged: (val) {
                  provider.setValue(val);
                });
          }),
          Consumer<ColorProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(provider.value)),
                    child: Center(
                        child: Text(
                      "Container1",
                      style: TextStyle(fontSize: 100),
                    )),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.amber.withOpacity(provider.value)),
                    child: Center(
                        child: Text(
                      "Container2",
                      style: TextStyle(fontSize: 100),
                    )),
                  ),
                )
              ],
            );
          }),
        ],
      ),
    );
  }
}
