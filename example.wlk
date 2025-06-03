
class Hogar{
var nivelDeMugre
const nivelDeConfort 

method esBueno(){
  return nivelDeMugre/2 <= nivelDeConfort
}
}
class Huerta{
var property capacidadDeProduccion

method esBueno() = capacidadDeProduccion > valorDeLaHuerta.valor()
}
object valorDeLaHuerta {
  var property valor = 10
}
class Mascota {
  var property nivelDeSalud

  method esBuena() = nivelDeSalud > 250 
}

class Plagas {
  var property poblacion 
  
  method transmitirEnfermedades() = poblacion >= 10
}

class Cucarachas inherits Plagas{
  var property peso  

  method pesoPromedio() =  peso / poblacion
  method nivelDeDanio()= poblacion / 2
   override method transmitirEnfermedades() = super() && self.pesoPromedio() >= 10

}
class Pulgas inherits Plagas{
method nivelDeDanio() = poblacion * 2
}
class Garrapatas inherits Plagas{
  method nivelDeDanio() = poblacion * 2
}
class PlagasDeMosquitos inherits Plagas{
  method nivelDeDanio() = poblacion  
  override method transmitirEnfermedades()= super() && poblacion * 3
}