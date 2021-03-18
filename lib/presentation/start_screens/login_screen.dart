import 'package:floges_flutter_app/config/locator.dart';import 'package:floges_flutter_app/config/router.gr.dart';import 'package:floges_flutter_app/presentation/widgets/circle_progressbar.dart';import 'package:floges_flutter_app/presentation/widgets/ui_helper.dart';import 'package:flutter/cupertino.dart';import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';import 'package:stacked_services/stacked_services.dart';import 'bloc/login_bloc_cubit.dart';class LoginScreen extends StatefulWidget {  @override  _LoginScreenState createState() => _LoginScreenState();}class _LoginScreenState extends State<LoginScreen> {  var emailController = TextEditingController();  var passwordController = TextEditingController();  LoginBlocCubit loginBlocCubit = LoginBlocCubit();  final NavigationService _navigationService = locator<NavigationService>();  @override  void initState() {    emailController.text = 'eve.holt@reqres.in';    passwordController.text = 'cityslicka';    super.initState();  }  @override  Widget build(BuildContext context) {    return Scaffold(      backgroundColor: Colors.white,      body: Padding(        padding: const EdgeInsets.all(20.0),        child: Column(          mainAxisAlignment: MainAxisAlignment.center,          children: [            TextFormField(              controller: emailController,              decoration: InputDecoration(labelText: 'Email'),            ),            verticalSpaceMedium,            TextFormField(              controller: passwordController,              obscureText: true,              decoration: InputDecoration(labelText: 'Password'),            ),            verticalSpaceLarge,            BlocBuilder(              cubit: loginBlocCubit,              builder: (context, state) {                print('Login state-----$state');                if (state is LoginDataResponse) {                  WidgetsBinding.instance.addPostFrameCallback((_) {                    _navigationService                        .pushNamedAndRemoveUntil(Routes.homeScreen);                  });                } else if (state is Loading) {                  return showCircleProgress();                }                return FlatButton(                  color: Colors.blue,                  child: Text(                    'Login',                    style: Theme.of(context).textTheme.button,                  ),                  onPressed: () {                    loginBlocCubit.getLogin({                      "email": emailController.text,                      "password": passwordController.text                    });                  },                );              },            )          ],        ),      ),    );  }}