import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity ,
  Color background = Colors.blue,
  required Function function,
  required String text,
  bool isUberCase = true ,
  double radius =0.0,
})=> Container(
  width: width,
  height: 40,

  decoration: BoxDecoration(
    color: background,
    borderRadius: BorderRadius.circular(radius,),
  ),
  child: MaterialButton(
    onPressed: ()=>function(),
    child: Text(
      isUberCase ?  text.toUpperCase() : text,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);

Widget defaultFormField({
 required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit,
  required FormFieldValidator validate,
  required String label,
  required IconData prefix,
  bool isPassword = false,
  IconData? suffix,
  Function? suffixPressed,

})=>TextFormField(
  controller: controller,
  keyboardType: type,
    obscureText: isPassword,
  onFieldSubmitted: (value){
    onSubmit!(value);
  },

  validator:validate,
  decoration:InputDecoration(
    border: const OutlineInputBorder(),
    labelText: label,
    prefixIcon: Icon(prefix,),
    suffixIcon: suffix != null ? IconButton(
        onPressed:()=> suffixPressed!(),
        icon: Icon(suffix,)) : null,
  ),
  );
