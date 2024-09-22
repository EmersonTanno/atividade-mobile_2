import 'package:atividade_mobile_2/conta_bancaria.dart';
import 'package:test/test.dart';

void main() {
  group('Conta Bancária - Testes Unitários', () {
    test('Deve depositar o valor corretamente', () {
      var conta = ContaCorrente(12345, 1000);
      conta.depositar(500);
      expect(conta.verificarSaldo(), 1500);
    });

    test('Deve sacar o valor corretamente quando há saldo suficiente', () {
      var conta = ContaCorrente(12345, 1000);
      conta.sacar(300);
      expect(conta.verificarSaldo(), 700);
    });

    test('Não deve permitir saque quando o saldo é insuficiente', () {
      var conta = ContaPoupanca(54321, 500);
      conta.sacar(600);
      expect(conta.verificarSaldo(), 500);
    });
  });
}