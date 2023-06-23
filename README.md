# Detecção de Linhas de Plantação

## Resumo

Este projeto é parte de uma aplicação de visão computacional de drones para agricultura de precisão. Este repositório contém os arquivos necessários para a detecção de linhas de plantação e planejamento da trajetória de VANTs.

## Descrição

Este repositório reflete apenas um módulo de um _framework_ para visão computacional de drones. Esse módulo consiste na Detecção de Linhas de Plantação (_Crop Row Detection_) que pertence aos clientes do _framework_, a camada de mais alto nível dessa aplicação. A imagem abaixo ilustra todos os módulos de _software_ desse _framework_:

![Arquitetura Geral do Software](/assets/pictures/general_software_architecture.png)

Figura 01: Arquitetura Geral de Software

Informações mais detalhadas sobre a aplicação como um todo encontram-se na seção [Cite-me](https://github.com/LASCAR-USRL/plant-line-detection/edit/master/README.md#cite-me).

## _Setup_

Descreve o _setup_ de _hardware_ e sofware para reprodução dos experimentos. Por exemplo, sistema operacional utilizado e versão das bibliotecas.

## Passos para reproduzir

Seguindo o [_Setup_](https://github.com/LASCAR-USRL/plant-line-detection/edit/master/README.md#setup) e a [Descrição](https://github.com/LASCAR-USRL/plant-line-detection/edit/master/README.md#descrição) do repositório, deve-se baixar este repositório para alguma pasta do dispositivo e abrir um terminal na pasta do projeto ou acessar essa através de comandos de um terminal. Após isso, a execução do projeto dentro de um ambiente adequado é descrita abaixo:

### Compilando no _Raspbian Stretch_:
	$ mkdir build
	$ cd build
	$ cmake ..
	$ make

### Rodando no _Raspbian Stretch_:
	$ cd build
	$ ./main

## Referências Úteis

Apresenta referências para compreensão de conceitos importantes para entender a solução e a implementação.

## Cite-me

Mais informações sobre a aplicação completa na dissertação e no artigo abaixo:

Basso, M., Pignaton de Freitas, E. A framework for autonomous mission and guidance control of unmanned aerial vehicles based on computer vision techniques. Dissertação de Mestrado. [https://www.lume.ufrgs.br/bitstream/handle/10183/179536/001068554.pdf](https://www.lume.ufrgs.br/bitstream/handle/10183/179536/001068554.pdf)

Basso, M., Pignaton de Freitas, E. A UAV Guidance System Using Crop Row Detection and Line Follower Algorithms. J Intell Robot Syst *97*, 605–621 (2020). [https://doi.org/10.1007/s10846-019-01006-0](https://doi.org/10.1007/s10846-019-01006-0)

## Melhoria

Descreve melhorias na implementação, como por exemplo, a refatoração baseada em outras bibliotecas.
