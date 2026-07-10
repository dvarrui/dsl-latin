# Dsl::Latin

```
DSL para programar en Latín usando Ruby.
```

Este es un proyecto que no tiene utilidad práctica. El objetivo era poner a prueba, una vez más, las características del lenguaje Ruby para crear un DSL de Latín en un corto espacio de tiempo.

## Instalación

* Instalar Ruby.
* Instalar la gema `gem install dsl-latin`

## Usage

* Crear un programa con el siguiente contenido:

```ruby
require "dsl/latin"

# Ejemplo: si-entonces-sino
aetas = X
escribere "\nEdad: #{aetas}"

si(aetas.maior? XVII)
  .tum { escribere "Adulto" }
  .si_non { escribere "Menor" }

# Output:
#
# => Edad: 10
# => Menor
```

* Ejecutar con `ruby FILENAME`

> Más [ejemplos](./examples/)

## Features

* Muestra mensajes por pantalla (`escribere`)
* Tenemos la instrucción condicional (`si-tum-si_non`)
* Algunos números se pueden escribir como números romanos.
* Los operadores de `>` y `<`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dvarrui/dsl-latin.

## Proyectos relacionados

* [Perligata](https://metacpan.org/dist/Lingua-Romana-Perligata/view/lib/Lingua/Romana/Perligata.pm)
* [Klingon](https://metacpan.org/pod/Lingua::tlhInganHol::yIghun)
* [dsl-clang](https://github.com/dvarrui/dsl-clang)
* [dsl-graph](https://github.com/dvarrui/dsl-graph)
* [dsl-python](https://github.com/dvarrui/dsl-python)
