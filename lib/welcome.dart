import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'login.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/login.png',
                  fit: BoxFit.cover,
                 
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Your Home services Expert',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                 Text(
                  'Continue with Phone Number',
                  style: TextStyle(
                     fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey[400]),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding:
                      const  EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration:  BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)
                    
                  ),
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                     
                    },
                    onInputValidated: (bool value) {
                      
                    },
                    selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: const TextStyle(color: Colors.black),
                    // textFieldController: controller,
                    formatInput: false,
                    maxLength: 9,
                    keyboardType: const TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    cursorColor: Colors.black,
                    inputDecoration: const InputDecoration(
                      contentPadding:
                           EdgeInsets.only(bottom: 15, left: 0),
                      border: InputBorder.none,
                      hintText: 'Enter Mobile Number',
                      hintStyle:
                          TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    // onSaved: (PhoneNumber number) {
                    //   print('On Saved: $number');
                    // },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Login()),
  );
                  },
                  minWidth: double.infinity,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                 const SizedBox(
                  height: 10,
                ),
                
                const Text(
                        'VIEW OTHER OPTION',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      
                      Text(
                        'ALREADY HAVE AN ACCOUNT?',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                       const Text(
                        'LOG IN',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
