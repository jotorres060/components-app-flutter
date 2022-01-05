import 'package:flutter/material.dart';

import 'package:components_app/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();

}

class _SliderScreenState extends State<SliderScreen> {
  
  double _value = 200;
  bool _isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider')
      ),
      body: Column(
        children: [
          Slider(
            activeColor: AppTheme.primary,
            min: 100,
            max: 500,
            value: _value,
            onChanged: _isActive
            ? (value) {
                _value = value;
                setState(() {});
              }
            : null
          ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _isActive,
            onChanged: (value) => setState(() { _isActive = value ?? true; })
          ),

          SwitchListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _isActive,
            onChanged: (value) => setState(() { _isActive = value; })
          ),
      
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                fit: BoxFit.contain,
                image: const NetworkImage('https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_1280.png'),
                width: _value,
              ),
            ),
          )
        ],
      )
    );
  }

}
