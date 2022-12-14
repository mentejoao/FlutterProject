// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto2/app/core/colors.dart';
import 'package:projeto2/modules/home/widgets/modulos.dart';

class HomePage extends GetView {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                color: light_blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: Text(
                      'RESERVA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                WidgetModulo(
                  titulo: 'Tenis 1',
                  descricao: 'Info 1',
                ),
                WidgetModulo(
                  titulo: 'Tenis 2',
                  descricao: 'Info 2',
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}