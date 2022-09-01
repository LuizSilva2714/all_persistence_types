import 'package:flutter/material.dart';

class AddPerson extends StatelessWidget {
  AddPerson({Key? key}) : super(key: key);
  static const routeName = "/add";
  final Text title = const Text("Nova Pessoa");
  final EdgeInsets padding = const EdgeInsets.all(16);
  
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      body: Padding(
        padding: padding,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Nome da Pessoa",
                  labelText: "Nome da Pessoa"
                ),
                controller: _nameController,
                validator: (value) {
                  if(value!.isEmpty){
                    return "Insira o nome da pessoa";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Sobrenome da Pessoa",
                  labelText: "Sobrenome da Pessoa"
                ),
                controller: _lastNameController,
                validator: ((value) {
                  if(value!.isEmpty){
                    return "Insira o sobrenome da pessoa";
                  }
                  return null;
                }),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Endereço da Pessoa",
                  labelText: "Endereço da Pessoa"
                ),
                controller: _addressController,
                validator: ((value) {
                  if(value!.isEmpty){
                    return "Insira o endereço da pessoa";
                  }
                  return null;
                }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  child: const Text("Gravar"),
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      
                    }
                    
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}