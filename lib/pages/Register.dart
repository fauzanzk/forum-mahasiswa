import 'package:flutter/material.dart';
import 'Loginarum.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // BACKGROUND
          Positioned.fill(
            child: Image.asset(
              'Foto/background1.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // CARD REGISTER
          Center(
            child: SingleChildScrollView(
              child: Container(
                width: 430,
                padding: const EdgeInsets.fromLTRB(
                  50,
                  45,
                  50,
                  40,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 25,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // JUDUL
                    const Center(
                      child: Text(
                        'Daftar',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF222222),
                          letterSpacing: 1,
                        ),
                      ),
                    ),

                    const SizedBox(height: 35),

                    // EMAIL
                    const Text(
                      'Masukan Email',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF222222),
                      ),
                    ),

                    const SizedBox(height: 7),

                    SizedBox(
                      height: 45,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFF999999),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          enabledBorder:
                              OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(9),
                            borderSide:
                                const BorderSide(
                              color: Color(0xFF4285F4),
                              width: 1,
                            ),
                          ),
                          focusedBorder:
                              OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(9),
                            borderSide:
                                const BorderSide(
                              color: Color(0xFF4285F4),
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // PASSWORD
                    const Text(
                      'Masukan Password',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF222222),
                      ),
                    ),

                    const SizedBox(height: 7),

                    SizedBox(
                      height: 45,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFF999999),
                          ),
                          suffixIcon: const Icon(
                            Icons.visibility_off_outlined,
                            size: 19,
                            color: Color(0xFF777777),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          enabledBorder:
                              OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(9),
                            borderSide:
                                const BorderSide(
                              color: Color(0xFF4285F4),
                              width: 1,
                            ),
                          ),
                          focusedBorder:
                              OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(9),
                            borderSide:
                                const BorderSide(
                              color: Color(0xFF4285F4),
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // KONFIRMASI PASSWORD
                    const Text(
                      'Masukan kembali Password',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF222222),
                      ),
                    ),

                    const SizedBox(height: 7),

                    SizedBox(
                      height: 45,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFF999999),
                          ),
                          suffixIcon: const Icon(
                            Icons.visibility_off_outlined,
                            size: 19,
                            color: Color(0xFF777777),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          enabledBorder:
                              OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(9),
                            borderSide:
                                const BorderSide(
                              color: Color(0xFF4285F4),
                              width: 1,
                            ),
                          ),
                          focusedBorder:
                              OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(9),
                            borderSide:
                                const BorderSide(
                              color: Color(0xFF4285F4),
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 7),

                    // SUDAH MEMILIKI AKUN
                    const Text(
                      'Sudah memiliki akun ?',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF333333),
                      ),
                    ),

                    const SizedBox(height: 3),

                    // TULISAN MASUK - BISA DIKLIK
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const LoginPage(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize:
                            MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text(
                        'Masuk',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFF4285F4),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    const SizedBox(height: 32),

                    // BUTTON Daftar - BISA DIKLIK
                    Center(
                      child: SizedBox(
                        width: 190,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const LoginPage(),
                              ),
                            );
                          },
                          style:
                              ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xFF4285F4),
                            foregroundColor: Colors.white,
                            elevation: 5,
                            shadowColor: Colors.black38,
                            shape:
                                RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(9),
                            ),
                          ),
                          child: const Text(
                            'Daftar',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}