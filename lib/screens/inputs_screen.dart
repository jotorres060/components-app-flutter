import 'package:flutter/material.dart';

import 'package:components_app/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, String> formValue = {
      'full_name' : '',
      'email' : '',
      'phone_number' : '',
      'password' : '',
      'area' : ''
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomTextFormField(
                keyboardType: TextInputType.name,
                label: const Text('Nombre completo'),
                icon: Icons.person_outline,
                formProperty: 'full_name',
                formValue: formValue
              ),
        
              const SizedBox(height: 30),
        
              CustomTextFormField(
                keyboardType: TextInputType.emailAddress,
                label: const Text('Correo electrónico'),
                icon: Icons.email_outlined,
                formProperty: 'email',
                formValue: formValue
              ),
        
              const SizedBox(height: 30),
        
              CustomTextFormField(
                keyboardType: TextInputType.phone,
                label: const Text('Teléfono'),
                icon: Icons.phone_android_outlined,
                formProperty: 'phone_number',
                formValue: formValue
              ),
        
              const SizedBox(height: 30),
        
              CustomTextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                label: const Text('Contraseña'),
                icon: Icons.password_outlined,
                formProperty: 'password',
                formValue: formValue
              ),
        
              const SizedBox(height: 30),

              DropdownButtonFormField<String>(
                items: const [
                  DropdownMenuItem(value: 'ti', child: Text('Tecnología')),
                  DropdownMenuItem(value: 'operaciones', child: Text('Operaciones')),
                  DropdownMenuItem(value: 'financiero', child: Text('Financiero')),
                  DropdownMenuItem(value: 'electronica', child: Text('Electrónica')),
                  DropdownMenuItem(value: 'th', child: Text('Talento Humano')),
                ],
                onChanged: (value) => formValue['area'] = value ?? 'ti'
              ),

              const SizedBox(height: 30),
        
              ElevatedButton(
                child: const SizedBox(
                  child: Center(
                    child: Text('Guardar')
                  ),
                  width: double.infinity,
                ),
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (!formKey.currentState!.validate()) {
                    return;
                  }
                  print(formValue);
                },
              )
            ]
          ),
        ),
      )
    );
  }

}
