# Arquitetura do Projeto

## Contexto de negócio

A Ciclo Commerce é uma empresa fictícia de varejo que comercializa produtos por e commerce, loja física e marketplace.

O objetivo deste projeto é simular uma arquitetura analítica de dados para apoiar análises comerciais, operacionais, de marketing, estoque e comportamento de clientes.

A base foi desenhada para permitir a aplicação prática dos conceitos do livro SQL Para Análise de Dados.

## Objetivo do laboratório

Este laboratório tem dois objetivos principais:

1. Desenvolver SQL aplicado a problemas reais de análise de dados.
2. Construir uma arquitetura de dados pequena, porém próxima de um projeto profissional.

O projeto será utilizado para estudar:

1. Preparação e qualidade de dados.
2. Séries temporais.
3. Coortes e retenção.
4. Análise de texto.
5. Detecção de anomalias.
6. Análise experimental.
7. Criação de conjuntos de dados complexos.
8. Funil de compra, inatividade e cesta de produtos.

## Arquitetura de dados

```text
Fontes simuladas
        ↓'
raw
        ↓
stg
        ↓
mart
        ↓
Power BI e análises SQL