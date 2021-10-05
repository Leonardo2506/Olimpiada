using System; 
using System.Collections.Generic; 

namespace Olimpiada.Core 
{
    public class Persona 
    {
        public int DNI {get; set;}

        public string Nombre {get; set;}

        public string Apellido {get; set;}

        public string pass {get; set;}

        public Persona()
        {}

        public string MostrarDatos(Registro Registro)
        {
            Console.WriteLine("Hay {0} cantidad de personas dentro del local, a las {1}", List<Registro>Entrada.count, fechaHora);
        }
    }
}