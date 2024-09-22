class ContaBancaria<T> {
  T numeroConta;
  double saldo;

  ContaBancaria(this.numeroConta, this.saldo);

  void depositar(double valor) {
    saldo += valor;
    print("Depósito de \$${valor.toStringAsFixed(2)} realizado.");
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print("Saque de \$${valor.toStringAsFixed(2)} realizado.");
    } else {
      print("Saldo insuficiente para saque de \$${valor.toStringAsFixed(2)}.");
    }
  }

  double verificarSaldo() {
    return saldo;
  }
}

class ContaCorrente extends ContaBancaria<int> {
  ContaCorrente(int numeroConta, double saldo) : super(numeroConta, saldo);
}

class ContaPoupanca extends ContaBancaria<int> {
  ContaPoupanca(int numeroConta, double saldo) : super(numeroConta, saldo);
}