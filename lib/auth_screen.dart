import 'package:flutter/material.dart';
import 'package:mi_prac/providerClass.dart';
import 'package:provider/provider.dart';
import 'textField.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DataPage>(
      builder: (context, model, _) {
        return Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AuthTextField(
                  controller: model.emailController,
                  textHint: 'Email',
                  iconData: Icons.mail,
                ),
                SizedBox(
                  height: 10,
                ),
                if(model.authType == AuthType.SignUp)
                AuthTextField(
                    iconData: Icons.person,
                    textHint: 'username',
                    controller: model.userNameController),
                SizedBox(
                  height: 10,
                ),
                AuthTextField(
                    iconData: Icons.password,
                    textHint: 'password',
                    controller: model.passwordController),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    model.setAuthType();
                  },
                  child: Text(model.authType == AuthType.SignUp
                      ? 'Sign Up'
                      : 'Sign In'),
                ),
                SizedBox(
                  height: 15,
                ),
                TextButton(
                  onPressed: (){
                    model.setAuthType();
                  },
                  child: Text(
                    model.authType == AuthType.SignUp? 'Already have an account' : 'Create an account'
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
