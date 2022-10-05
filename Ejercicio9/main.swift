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
            
            let figura = Triangulo(base: base!, altura: altura!)
            print("El área de tu ", figuraNombre!, " es ", figura.calcularArea(), " y el perímetro ", figura.calcularPerimetro())
            
        } else if figuraNombre == "circulo" {
            print("Radio:")
            let radio = Float(readLine()!)
            let figura = Circulo(radio: radio!)
            print("Area de tu ", figuraNombre!, " : ", figura.calcularArea(), ". Perímetro: ", figura.calcularPerimetro())
            
        } else if figuraNombre == "rectangulo" {
            print("Lado 1:")
            let lado1 = Float(readLine()!)
            print("Lado 2:")
            let lado2 = Float(readLine()!)
            
            let figura = Rectangulo(lado1: lado1!, lado2: lado2!)
            print("Area de tu ", figuraNombre!, " : ", figura.calcularArea(), ". Perímetro: ", figura.calcularPerimetro())
        } else if figuraNombre == "cuadrado" {
            print("Lado:")
            let lado = Float(readLine()!)
            
            let figura = Cuadrado(lado: lado!)
            print("Area de tu ", figuraNombre!, " : ", figura.calcularArea(), ". Perímetro: ", figura.calcularPerimetro())
        }
            
    } else {
        print("Figura incorrecta")
        pedirFigura()
    }
    
}

pedirFigura() 

