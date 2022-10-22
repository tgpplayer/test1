# Surface and peremeter calculator
**This program will calculate the surface and peremeter of a geometric figure given by a user.**
**The figures to be chosen are *triangle*, *circle*, *rectangle* and *square.***

We start by doing an structure of inheritance. The father is *Figura* and the sons are the figures mentioned previously.
The getters and setters are establilshed in *triangle*, *circle*, *rectangle* and *square* for later asign them the value given by the user

We request the necessary values through console in order to calculate the figure given by the user surface and peremeter correctly. For example, if the user wants to know the surface and peremeter of a rectanlge:

``` swift
if figuraNombre == "rectangulo" {
  print("Lado 1:")
  let lado1 = Float(readLine()!)
  print("Lado 2:")
  let lado2 = Float(readLine()!)
            
  let figura = Rectangulo(nombre: "r")
  figura.lado1 = lado1!
  figura.lado2 = lado2!
            
  let areaRectangulo: (Float, Float) -> Float = { lado1, lado2 in return (lado1 * lado2) }
  let perimetroRectangulo: (Float, Float) ->  Float = { lado1, lado2 in return (lado1 + lado2) * 2 }
            
  print("Area de tu ", figuraNombre!, " : ", areaRectangulo(figura.lado1, figura.lado2), ". Perímetro: ", perimetroRectangulo(figura.lado1, figura.lado2))
```

1. If sentence
2. Request the necessary values to calculate the surface and peremeter of the selected figure
3. Asign the values given to the figure properties using setters
4. Establish closures to store the surface and peremeter in a variable
5. Print the results using closures and sending the right arguments

There are also limitations if the user gives a figure that we can´t control, so if the figure given does not exist, we tell the user and to then use reclusion to get into a loop until the surface and peremeter of an exisiting figure are done. So:

- [x] Make a correct structure of inheritance
- [x] Right formulas to calculate correctly the surfaces
- [x] Control of the program flow
- [x] Version control

[^1]: By Juan Carlos Jaramillo Carrillo
