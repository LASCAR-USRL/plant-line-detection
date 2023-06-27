# Detecção de Linhas de Plantação

## Sumário

- [Resumo](https://github.com/LASCAR-USRL/plant-line-detection/tree/master#resumo);
- [Descrição](https://github.com/LASCAR-USRL/plant-line-detection/tree/master#descrição);
- [_Setup_](https://github.com/LASCAR-USRL/plant-line-detection/tree/master#setup);
- [Passos para reproduzir](https://github.com/LASCAR-USRL/plant-line-detection/tree/master#passos-para-reproduzir);
- [Referências Úteis](https://github.com/LASCAR-USRL/plant-line-detection/tree/master#referências-úteis);
- [Cite-me](https://github.com/LASCAR-USRL/plant-line-detection/tree/master#cite-me);
- [Melhorias](https://github.com/LASCAR-USRL/plant-line-detection/tree/master#melhorias).

## Resumo

Este projeto é parte de uma aplicação de visão computacional de drones para agricultura de precisão. Este repositório contém os arquivos necessários para a detecção de linhas de plantação e planejamento da trajetória de VANTs.

## Descrição

Este repositório reflete apenas um módulo de um _framework_ para visão computacional de drones. Esse módulo consiste na Detecção de Linhas de Plantação (_Crop Row Detection_) que pertence aos clientes do _framework_, a camada de mais alto nível dessa aplicação. A imagem abaixo ilustra todos os módulos de _software_ desse _framework_:

![Arquitetura Geral do Software](/assets/pictures/general_software_architecture.png)

**Figura 01: Arquitetura Geral de Software**

O módulo abordado neste repositório é o _Crop Row Detection_ da imagem acima. Esse bloco contém as bibliotecas OpenCV e Raspicam, bem como o código de detecção, filtragem e seguidor de linhas de plantação. Além disso, para conexão com o drone, ela conta com um _encoder/decoder_ e um cliente _socket_. A imagem abaixo mostra bem essa descrição:

![_Crop Row Detection Client_](/assets/pictures/crop_row_detection_client.png)

**Figura 02: Cliente de Detecção de Linhas de Plantação**

O algoritmo de operação desse cliente ilustrado abaixo:

![_Crop Row Detection Operation Flow_](/assets/pictures/crop_row_detection_algorithm.png)

**Figura 03: Fluxo de Operação do Detector de Linhas de Plantação**

Informações mais detalhadas sobre a aplicação como um todo encontram-se na seção [Cite-me](https://github.com/LASCAR-USRL/plant-line-detection/tree/master#cite-me).

## _Setup_

Descreve o _setup_ de _hardware_ e sofware para reprodução dos experimentos. Por exemplo, sistema operacional utilizado e versão das bibliotecas.

## Passos para reproduzir

Seguindo o [_Setup_](https://github.com/LASCAR-USRL/plant-line-detection/tree/master#setup) e a [Descrição](https://github.com/LASCAR-USRL/plant-line-detection/tree/master#descrição) do repositório, deve-se baixar este repositório para alguma pasta do dispositivo e abrir um terminal na pasta do projeto ou acessar essa através de comandos de um terminal. Após isso, a execução do projeto dentro de um ambiente adequado é descrita abaixo:

### Compilando no Raspbian Stretch:
	$ mkdir build
	$ cd build
	$ cmake ..
	$ make

### Rodando no Raspbian Stretch:
	$ cd build
	$ ./main

## Referências Úteis

Apresenta referências para compreensão de conceitos importantes para entender a solução e a implementação.

## Cite-me

Mais informações sobre a aplicação completa na dissertação e no artigo abaixo:

Basso, M., Pignaton de Freitas, E. A framework for autonomous mission and guidance control of unmanned aerial vehicles based on computer vision techniques. Dissertação de Mestrado. [https://www.lume.ufrgs.br/bitstream/handle/10183/179536/001068554.pdf](https://www.lume.ufrgs.br/bitstream/handle/10183/179536/001068554.pdf)

Basso, M., Pignaton de Freitas, E. A UAV Guidance System Using Crop Row Detection and Line Follower Algorithms. J Intell Robot Syst *97*, 605–621 (2020). [https://doi.org/10.1007/s10846-019-01006-0](https://doi.org/10.1007/s10846-019-01006-0)

## Melhorias

Como enfatizado na seção [Descrição](https://github.com/LASCAR-USRL/plant-line-detection/tree/master#descrição), este repositório está incompleto, não apresentando os pacotes necessários para efetivamente ser utilizado em um drone com Raspbian Strech ou alguma versão do Ubuntu. Faltam os sistemas de movimentação dos VANTS, incorporando os códigos presentes neste repositório.

Para tanto, é sugerida a incorporação de ROS2 na biblioteca, bem como a implantação de um _flight stack_, como a PX4, para facilitar e tornar mais reutilisáveis os algoritmos presentes neste repositório. Além disso, com esse novo _setup_, seria possível realizar simulações em Gazebo ou até no ambiente da Unreal Engine.
