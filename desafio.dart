import 'dart:math';

main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

print('1 - Remover os duplicados.');

Set<String> semDuplicidade = pessoas.toSet();
print('Total de pessoas sem duplicidade: ${semDuplicidade.length}');

print('');

print('2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino.');

var sexoFeminino = semDuplicidade.where((element) => element.contains('Feminino'));
print('Há ${sexoFeminino.length} pessoas do sexo feminino');

var sexoMasculino = semDuplicidade.where((element) => element.contains('Masculino'));
print('Há ${sexoMasculino.length} pessoas do sexo masculino');

print('');

print('3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos');

Set<String> maioresDe18 = pessoas.toSet();
maioresDe18.removeWhere((element) => int.parse(element.split('|')[1]) < 18);
print(maioresDe18);

print('');

print('4 - Encontre a pessoa mais velha.');

pessoas.sort((a, b){
  var idadeA = int.tryParse(a.split('|')[1]);
  var idadeB = int.tryParse(b.split('|')[1]);

  return idadeA.compareTo(idadeB);
});
print('A pessoa mais velha é ${pessoas.last.split('|')[0]} com ${pessoas.last.split('|')[1]} anos');

}