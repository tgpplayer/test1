import Foundation

class Figura {
    private let nombre: String?
    
    init(nombre: String) {
        self.nombre = nombre;
    }
}

class Triangulo: Figura {
    private let base: Float?
    private let altura: Float?
    
    init(base: Float, altura: Float) {
        self.base = base;
        self.altura = altura;
        super.init(nombre: "tri")
    }
    
    func calcularArea() -> Float {
        return (base! * altura!) / 2
    }
    func calcularPerimetro() -> Float {
        return base! * 3
    }
}

class Circulo: Figura {
    private let radio: Float?
    
    init(radio: Float) {
        self.radio = radio
        super.init(nombre: "c")
    }
    
    func calcularArea () -> Float {
        return 3.14 * (radio! * radio!)
    }
    func calcularPerimetro () -> Float {
        return 2 * 3.14 * radio!
    }
}

class Rectangulo: Figura {
    private let lado1: Float?
    private let lado2: Float?
    
    init(lado1: Float, lado2: Float) {
        self.lado1 = lado1
        self.lado2 = lado2
        super.init(nombre: "r")
    }
    
    func calcularArea () -> Float {
        return lado1! * lado2!
    }
    func calcularPerimetro () -> Float {
        return (lado1! + lado2!) * 2
    }
}

class Cuadrado: Figura {
    private let lado: Float?
    
    init(lado: Float) {
        self.lado = lado
        super.init(nombre: "c")
    }
    
    func calcularArea () -> Float {
        return lado! * lado!
    }
    func calcularPerimetro () -> Float {
        return lado! * 4
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

