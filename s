
class CJugador {
  constructor(nombre, posicion, edad, estatura, peso, nacionalidad) {
    this.nombre = nombre;
    this.posicion = posicion;
    this.edad = edad;
    this.estatura = estatura;
    this.peso = peso;
    this.nacionalidad = nacionalidad;
  }
}

const jugadores = [
  new CJugador("Fábio", "G", 43, 1.88, 86, "Brasil"),
  new CJugador("Marlon", "D", 28, 1.83, 78, "Brasil"),
  new CJugador("Marcelo", "D", 35, 1.73, 72, "Brasil"),
  new CJugador("Nino", "D", 26, 1.88, 82, "Brasil"),
  new CJugador("John Kennedy", "A", 21, 1.73, 71, "Brasil"),
  new CJugador("Keno", "A", 34, 1.78, 72, "Brasil"),
  new CJugador("Germán Cano", "A", 35, 1.78, 81, "Argentina"),
];

function listarArgentinos(jugadores) {
  return jugadores.filter(jugador => jugador.nacionalidad === "Argentina");
}
console.log("Jugadores de Nacionalidad Argentina:");
console.table(listarArgentinos(jugadores));

function listarPorPeso(jugadores) {
  return jugadores.filter(jugador => jugador.peso >= 75 && jugador.peso <= 80);
}
console.log("Jugadores con peso entre 75 y 80 kg:");
console.table(listarPorPeso(jugadores));

function jugadorMasAlto(jugadores) {
  return jugadores.reduce((max, jugador) =>
    jugador.estatura > max.estatura ? jugador : max
  );
}
console.log("El jugador más alto:");
console.table(jugadorMasAlto(jugadores));
