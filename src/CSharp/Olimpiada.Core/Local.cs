using System;
using System.Collections.Generic;

namespace Olimpiada.Core
{
    public class Local
    {
        public int idSucursal {get; set;}

        public string Nombre {get; set;}

        public int DNI {get; set;}

        public string Direccion {get; set;}

        public int CantMax {get; set;}

        public Persona DNI {get; set;}

        List<Registro> Entrada {get; set;}

        List<Registro> Salida {get; set;}


        public Local ()
        {
            Entrada = new List<Registro>{};

            Salida = new List<Registro>{};
        }

        public void Ingreso()
        { 

            if(PuedeIngreso)
            {
                Entrada.Add(new Registro(DateTime.Now));
            }
        }

        public void Egreso()
        {
            Entrada.RemoveAt(new Registro(DateTime.Now));

            Salida.Add(new Registro(DateTime.Now));
        }

        public int Disponiblidad()
        {
            
        }

        public bool PuedeIngreso()
        {
            
        }
    }
}
