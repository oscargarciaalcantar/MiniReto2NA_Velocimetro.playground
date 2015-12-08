//: Playground - noun: a place where people can play

/*
    Mini reto 2 del curso de SWIFT
    Velocimetro de un automovil

*/

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20,  VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(rawValue: 0)!
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String){
        //print()
        let temp = velocidad.rawValue
        switch velocidad.rawValue{
        case 0:
            velocidad = Velocidades(rawValue: 20)!
            return (temp, "Apagado")
            
        case 20:
            velocidad = Velocidades(rawValue: 50)!
            return (temp, "Velocidad baja")
            
        case 50:
            velocidad = Velocidades(rawValue: 120)!
            return (temp, "Velocidad media")
            
        case 120:
            velocidad = Velocidades(rawValue: 50)!
            return (temp, "Velocidad alta")
            
        default:
            return (temp, "Apagado")
            
        }
    }
}

var auto = Auto()
auto.velocidad

for num in 0...20{
    print(auto.cambioDeVelocidad())
}
