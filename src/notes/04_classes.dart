import 'package:flutter/material.dart';

void main() {
  Celular celularDaGabi = Celular('rosa', 5, 0.398, 5.7);
  Celular celularDaFulana = Celular('preto', 2, 0.798, 5.7);

  print(celularDaFulana.toString());
  print(celularDaGabi.toString());

  print(celularDaGabi.valorDoCelular(1000));

  double resultado = celularDaFulana.valorDoCelular(1000);
  print(resultado);
}

class Celular {
  final String cor;
  final int qtdPros;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.qtdPros, this.peso, this.tamanho);

  String toString() {
    return "Cor: $cor, qtdPros: $qtdPros, peso: $peso, tamanho: $tamanho";
  }

  double valorDoCelular(double valor) {
    return valor * qtdPros;
  }
}
