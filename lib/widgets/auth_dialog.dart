import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siteflutter/helpers/authentication.dart';
import 'package:siteflutter/helpers/style.dart';
import 'package:siteflutter/pages/home_page/widgets/home_page.dart';

class AuthDialog extends StatefulWidget {
  AuthDialog({Key? key}) : super(key: key);

  @override
  _AuthDialogState createState() => _AuthDialogState();
}

class _AuthDialogState extends State<AuthDialog> {
  String loginStatus = '';
  late Color loginStringColor = Colors.green;

  bool visiblePassword = true;
  bool _isHovering = false;

  late TextEditingController textControllerEmail;
  late FocusNode textFocusNodeEmail;
  bool _isEditingEmail = false;

  late TextEditingController textControllerPassword;
  late FocusNode textFocusNodePassword;
  bool _isEditingPassword = false;

  bool _isLoggingIn = false;
  bool _isProcessing = false;

  @override
  void initState() {
    textControllerEmail = TextEditingController();
    textControllerEmail.text = '';
    textFocusNodeEmail = FocusNode();
    textControllerPassword = TextEditingController();
    textControllerPassword.text = '';
    textFocusNodePassword = FocusNode();
    super.initState();
  }

  String? _validateEmail(String value) {
    value = value.trim();

    if (textControllerEmail.text.isNotEmpty) {
      if (value.isEmpty) {
        return 'Email can\'t be empty';
      } else if (!value.contains(RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
        return 'Coloque um e-mail válido';
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          padding: EdgeInsets.only(right: 50, left: 50, top: 35),
          width: 400,
          height: 500,
          decoration: BoxDecoration(
              color: white, borderRadius: BorderRadius.circular(30)),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        child: Image.asset('assets/images/maosj.png'),
                      ),
                      Text(
                        'Login',
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    'Faça login na sua conta',
                    style:
                        GoogleFonts.montserrat(fontSize: 16, color: grayBottom),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: TextField(
                  focusNode: textFocusNodeEmail,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  controller: textControllerEmail,
                  autofocus: false,
                  onChanged: (value) {
                    setState(() {
                      _isEditingEmail = true;
                    });
                  },
                  onSubmitted: (value) {
                    textFocusNodeEmail.unfocus();
                    FocusScope.of(context).requestFocus(textFocusNodeEmail);
                  },
                  decoration: InputDecoration(
                    errorText: _isEditingEmail
                        ? _validateEmail(textControllerEmail.text)
                        : null,
                    errorStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.redAccent,
                    ),
                    filled: true,
                    labelText: 'E-mail',
                    hintText: 'exemplo@dominio.com',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: Icon(Icons.email),
                    contentPadding: EdgeInsets.only(right: 30),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
                child: TextField(
                  focusNode: textFocusNodePassword,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  controller: textControllerPassword,
                  autofocus: false,
                  onChanged: (value) async {
                    setState(() {
                      _isEditingPassword = true;
                    });
                  },
                  onSubmitted: (value) {
                    textFocusNodePassword.unfocus();
                    FocusScope.of(context).requestFocus(textFocusNodePassword);
                  },
                  obscureText: visiblePassword,
                  style: TextStyle(),
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text(
                        'Ver senha',
                        style: GoogleFonts.montserrat(),
                      )
                    ],
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering = true : _isHovering = false;
                      });
                    },
                    hoverColor: Colors.transparent,
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Esqueci minha senha",
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                loginStatus,
                style: GoogleFonts.montserrat(color: loginStringColor),
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () async {
                  setState(() {
                    _isLoggingIn = true;
                  });
                  await signInWithEmailPassword(
                          textControllerEmail.text, textControllerPassword.text)
                      .then((result) {
                    if (result != null) {
                      setState(() {
                        loginStatus = 'Logado com sucesso';
                        loginStringColor = Colors.green;
                      });
                      print(result);
                    }
                  }).catchError((error) {
                    print('Erro ocorrido no login $error');
                    setState(() {
                      loginStatus = 'Falha no login, tente novamente!';
                      loginStringColor = Colors.red;
                    });
                  });
                  setState(() {
                    _isLoggingIn = false;
                  });
                },
                child: Text(
                  'Entrar',
                  style: GoogleFonts.montserrat(),
                ),
                style: ElevatedButton.styleFrom(
                  primary: blueDetails,
                  fixedSize: const Size(300, 45),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Entre com Google:',
                style: GoogleFonts.montserrat(),
              ),
              ElevatedButton(
                onPressed: () async {
                  setState(() {
                    _isProcessing = true;
                  });
                  await signInWithGoogle().then((result) {
                    print(result);
                    if (result != null) {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => HomePage(),
                        ),
                      );
                    }
                  }).catchError((error) {
                    print('Registration Error: $error');
                  });
                  setState(() {
                    _isProcessing = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: 40,
                        child: Image.asset('assets/images/icongoogle.png')),
                    Text(
                      'Google',
                      style: GoogleFonts.montserrat(color: Colors.black),
                    ),
                    SizedBox(
                      width: 40,
                      child: Text(''),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    primary: white,
                    fixedSize: const Size(300, 45),
                    side: BorderSide(width: 1.0, color: Colors.black)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
