import Foundation

class Figura {
    private let nombre: String?
    
    init(nombre: String) {
        self.nombre = nombre;
    }
}

class Triangulo: Figura {
    private var _base: Float?
    private var _altura: Float?
    public var base: Float {
        get {
            return self._base!
        }
        set(nuevaBase) {
            self._base = nuevaBase
        }
    }
    public var altura: Float {
        get {
            return self._altura!
        }
        set(nuevaAltura) {
            self._altura = nuevaAltura
        }
    }
    
}

class Circulo: Figura {
    private var _radio: Float?
    
    public var radio: Float {
        get {
            return self._radio!
        }
        set (nuevoRadio){
            self._radio = nuevoRadio
        }
    }
}

class Rectangulo: Figura {
    private var _lado1: Float?
    private var _lado2: Float?
    
    public var lado1: Float {
        get {
            return self._lado1!
        }
        set (nuevoLado1) {
            self._lado1 = nuevoLado1
        }
    }
    public var lado2: Float {
        get {
            return self._lado2!
        }
        set(nuevoLado2) {
            self._lado2 = nuevoLado2
        }
    }
}

class Cuadrado: Figura {
    private var _lado: Float?
    
    public var lado: Float {
        get {
            return self._lado!
        }
        set(nuevoLado) {
            self._lado = nuevoLado
        }
    }
}

var figuraNombre: String?

let figuras = ["triangulo", "circulo", "rectangulo", "cuadrado"]
func pedirFigura() {
    print("¿Que quieres que sea tu figura, un triángulo, círculo, rctángulo o cuadrado?")
    figuraNombre = readLine()
    
    var figuraExiste = false
    for i in figuras {
        if figuraNombre == i {
            figuraExiste = true
            break
        } else {
            figuraExiste = false
        }
    }
    
    if figuraExiste {
        if figuraNombre == "triangulo" {
            print("Base:")
            let base = Float(readLine()!)
            print("Altura:")
            let altura = Float(readLine()!)
            
            let figura = Triangulo(nombre: "t")
            figura.base = base!
            figura.altura = altura!
            
            let areaTriangulo: (Float, Float) -> Float = { base, altura in return (base * altura) / 2 }
            let perímetroTriangulo: (Float) -> Float = { base in return base * 3 }
            
            print("El área de tu ", figuraNombre!, " es ", areaTriangulo(figura.base, figura.altura), " y el perímetro ", perímetroTriangulo(figura.base))
            
        } else if figuraNombre == "circulo" {
            print("Radio:")
            let radio = Float(readLine()!)
            
            let figura = Circulo(nombre: "c")
            figura.radio = radio!
            
            let areaCirculo: (Float) -> Float = { radio in return (3.14 * radio * radio) }
            let perimetroCirculo: (Float) -> Float = { radio in return (2 * 3.14 * radio) }
            
            print("Area de tu ", figuraNombre!, " : ", areaCirculo(figura.radio), ". Perímetro: ", perimetroCirculo(figura.radio))
            
        } else if figuraNombre == "rectangulo" {
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
        } else if figuraNombre == "cuadrado" {
            print("Lado:")
            let lado = Float(readLine()!)
            
            let figura = Cuadrado(nombre: "c")
            figura.lado = lado!
            
            let areaCuadrado: (Float) -> Float = { lado in return (lado * lado) }
            let perimetroCuadrado: (Float) -> Float = { lado in return (lado * 4) }
            
            print("Area de tu ", figuraNombre!, " : ", areaCuadrado(figura.lado), ". Perímetro: ", perimetroCuadrado(figura.lado))
        }
            
    } else {
        print("Figura incorrecta")
        pedirFigura()
    }
    
}

pedirFigura()

