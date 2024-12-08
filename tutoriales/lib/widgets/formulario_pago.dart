import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FormCard extends StatefulWidget{
  const FormCard({Key}) : super (key: Key);

  @override
  _FormCardState createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {
  var tarjetaMask = MaskTextInputFormatter(mask: '####-####-####-####', filter: { "#":RegExp(r'[0-9]') });
  var fechaMask = MaskTextInputFormatter(mask: '##/##', filter: { "#":RegExp(r'[0-9]') });
  var codigoMask = MaskTextInputFormatter(mask: '###', filter: { "#":RegExp(r'[0-9]') });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.network("https://static.vecteezy.com/system/resources/thumbnails/012/986/755/small_2x/abstract-circle-logo-icon-free-png.png",
          width:200,
          height: 200,),
         const SizedBox(
          height: 20,
          ),
          _inputNombre(),
          const SizedBox(
            height: 10,
            ),
          _inputTarjeta(),
          const SizedBox(
            height: 10,
            ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                child: _inputFecha(),),
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                child: _inputCodigo(),),
                ],
          ),
          Container(
                  margin: const EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width -30,
                  child: ElevatedButton(onPressed: (){}, child: Text("Pagar"))
                  )
          ],
      ),
    );   
  }

  Container _inputNombre() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color:Colors.grey)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            hintText: "Nombre",
            border: InputBorder.none
          ),
        ));
  }

  Container _inputTarjeta() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color:Colors.grey)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          inputFormatters: [tarjetaMask],
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            hintText: "0000 0000 0000 0000",
            border: InputBorder.none
          ),
        ));
  }

  Container _inputFecha() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color:Colors.grey)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: [fechaMask],
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            hintText: "01/24",
            border: InputBorder.none
          ),
        ));
  }

  Container _inputCodigo() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color:Colors.grey)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: [codigoMask],
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            hintText: "000",
            border: InputBorder.none
          ),
        ));
  }
}