# Unidad_Procesadora_SV_QuartusII

Para desarrollar una Unidad Procesadora, se ha diseñado una arquitectura basada en varios módulos programados en System Verilog. Estos módulos se han instanciado para crear una Unidad Procesadora parametrizable de 4 bits.

* La Unidad Procesadora consta de los siguientes módulos:
* Módulo Multiplexor 4x1: Se utilizan dos de estos módulos para permitir la selección de una de las cuatro entradas según una señal de control.
* Módulo de Registros: Este módulo permite almacenar y retener datos. Se utiliza para almacenar temporalmente los valores necesarios durante las operaciones.
* Módulo Decodificador: El decodificador se encarga de convertir una señal de entrada en varias señales de salida, activando una única salida correspondiente a la entrada recibida.
* Módulo de Compuertas AND: Se emplean cuatro módulos de compuertas AND para realizar operaciones lógicas AND entre diferentes señales.
* Multiplexores de 2x1: Se emplean tres multiplexores de 2x1 para seleccionar entre dos entradas según una señal de control.
* Unidad de Corrimiento (Shifter): Esta unidad permite desplazar los bits de una palabra de datos hacia la izquierda o hacia la derecha.
* Módulo de la Unidad Lógica Aritmética (ALU): El ALU es el núcleo de la Unidad Procesadora. Realiza operaciones lógicas y aritméticas en los datos de entrada y produce un resultado en función de las señales de control.

Cada uno de estos módulos se ha diseñado y programado en forma individual, para luego instanciarlo en el módulo principal de la Unidad Procesadora. Este enfoque modular permite una mayor flexibilidad y reutilización de los componentes, facilitando así el diseño y la escalabilidad del sistema.

##Unidad Procesadora
Se realizo la instanciación de todos los módulos; como el decodificador, compuertas and, registros, multiplexores A y B, multiplexor 2x1, Shifter y la ALU.

[![Procesador-codigo.jpg](https://i.postimg.cc/wvj0XsBV/Procesador-codigo.jpg)](https://postimg.cc/QBvQsC19)

[![Procesador-codigo.jpg](https://i.postimg.cc/wvj0XsBV/Procesador-codigo.jpg)](https://postimg.cc/QBvQsC19)

[![Parametros.jpg](https://i.postimg.cc/g2BvCBcv/Parametros.jpg)](https://postimg.cc/18wn6Bqt)

[![Simulacion2.jpg](https://i.postimg.cc/d386vRNJ/Simulacion2.jpg)](https://postimg.cc/xN1M3mSZ)
