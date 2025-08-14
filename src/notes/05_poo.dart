void main() {
  Carro mercedes = Carro("Mercedes");
  Carro gol = Carro("Gol");
  
  mercedes.setValor(300000);
  print(mercedes.valorDoCarro); // funciona
  print(mercedes._valor);       // funciona
  
  gol.setValor(100000);
  print(gol.valorDoCarro); // funciona
  print(gol._valor);       // funciona

  // mercedes._segredo; -> oculto

  Filho gabi = Filho();
  gabi.falar();

  // Polimorfismo
  Pagamento pagamento = PagarComBoleto();
  pagamento.pagar();

  pagamento = PagarComPix();
  pagamento.pagar();
}

class Carro {
  final String modelo;
  // variavel encapsulada
  String _segredo = 'Muito Dinheiro'; // fica oculto para outros arquivos
  int _valor = 1000;

  // criando um getter -> dá visibilidade
  int get valorDoCarro => _valor; // agora a variável se torna publica

  // criando um setter -> dá liberdade para inserir valor à variável
  void setValor(int valor) => _valor = valor;

  Carro(this.modelo);
}

// Abstrações/Interfaces/Contratos
abstract class Pessoa {
  String comunicar();
}

class PessoaET implements Pessoa {
  String comunicar() {
    return "Olá mundo!";
  }
}

class PessoaNaoET implements Pessoa {
  String comunicar() {
    return "Bom dia!";
  }
}

abstract class Pagamento {
  void pagar();
}

class PagarComBoleto implements Pagamento {
  void pagar() {
    print("Pagando com boleto");
  }
}

class PagarComPix implements Pagamento {
  void pagar() {
    print("Pagando com pix");
  }
}

// Herança
class Pai {
  String falar() {
    return "Papai!";
  }
}

class Filho extends Pai {}