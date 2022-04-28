import 'package:flutter/widgets.dart';

import '../widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValue = {
      'first_name': 'Johan',
      'last_name': 'Sánchez',
      'email': 'jmsm157@gmail.com',
      'password': '123456',
      'rol': 'Admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                    formProperty: 'first_name',
                    formValues: formValue,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    formProperty: 'last_name',
                    formValues: formValue,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del usuario',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValue,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Ingrese contraseña',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValue,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(
                          child: Text('Admin'),
                          value: 'Admin',
                        ),
                        DropdownMenuItem(
                          child: Text('Superuser'),
                          value: 'Superuser',
                        ),
                        DropdownMenuItem(
                          child: Text('Developer'),
                          value: 'Developer',
                        ),
                        DropdownMenuItem(
                          child: Text('Jr. Developer'),
                          value: 'Jr. Developer',
                        ),
                      ],
                      onChanged: (value) {
                        print(value);
                        formValue['role'] = value ?? 'Admin';
                      }),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text('Guardar'),
                      ),
                    ),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('formulario no válido');
                        return;
                      }
                      print(formValue);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
