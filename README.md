📚 Estudos de Banco de Dados Relacional (MySQL)
Este repositório contém o dump do banco de dados e aprendizados práticos desenvolvidos durante o curso de MySQL do portal Curso em Vídeo, ministrado pelo professor Gustavo Guanabara. O objetivo deste projeto foi sair da teoria e dominar a manipulação de dados em cenários reais de TI.

🚀 O que aprendi e apliquei
1. Modelagem e Estrutura
Antes de colocar a mão no código, foquei na teoria de modelagem relacional, compreendendo como os dados devem se organizar através do DER (Diagrama Entidade-Relacionamento). Aprendi a importância de uma base bem estruturada para evitar redundâncias e garantir a performance.

2. Motores de Armazenamento (Engines)
Diferente de quem apenas usa o padrão do sistema, aprofundei-me nas diferenças técnicas entre os motores:

MyISAM: Entendi sua aplicação em cenários de leitura rápida, mas com a limitação de não suportar chaves estrangeiras.

InnoDB: Foi o motor que escolhi para este projeto por suportar transações e integridade referencial.

XtraDB: Conheci as melhorias de performance oferecidas por essa variante do InnoDB para ambientes de alta carga.

3. Integridade Referencial na Prática (O Desafio)
Um dos maiores aprendizados foi durante a migração de tabelas de MyISAM para InnoDB.

Resolução de Erros: Ao tentar ativar as Chaves Estrangeiras (Constraints), identifiquei e tratei dados órfãos.

Limpeza de Dados: Aprendi a utilizar scripts SQL para higienizar a base antes de aplicar travas de segurança, garantindo que nenhum registro ficasse sem referência.

4. Manipulação e Consultas Avançadas
Dominei os comandos fundamentais de DML (Data Manipulation Language):

Inserção, Atualização e Remoção: Pratiquei o uso seguro de UPDATE e DELETE, sempre atento às travas de segurança (Safe Updates).

Junções de Dados: Entendi como conectar tabelas de forma inteligente usando Inner Join (para dados relacionados) e Outer Join (Left e Right, para garantir que informações não sejam perdidas mesmo sem correspondência direta).

🛠️ Tecnologias Utilizadas
- MySQL Server
- MySQL Workbench
- phpMyAdmin

👨‍🏫 Créditos
Este aprendizado foi possível graças ao excelente conteúdo gratuito disponibilizado pelo Professor Gustavo Guanabara no canal Curso em Vídeo. Um exemplo de como a educação de qualidade pode transformar carreiras na tecnologia.
