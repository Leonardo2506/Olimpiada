using System;
using System.Collections.Generic;
using System.Linq; 

namespace Olimpiada.Core
{
    public class Local
    {
        public int idSucursal {get; set;}

        public string Nombre {get; set;}

        public string Direccion {get; set;}

        public int CantMax {get; set;}

        public Persona DNI {get; set;}

        List<Registro> Entrada {get; set;}

        List<Registro> Salida {get; set;}

        public Local()
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
            int disponiblidad;

            disponiblidad = CantMax - (Entrada.Count(e=>EsHoy(e)) - Salida.Count(e=>EsHoy(e)));

            return disponiblidad;
        }

        public bool PuedeIngreso()
        {
            if(disponiblidad => 1)
            {
                Console.WriteLine("Entrada habilitada");

                return true; 
            }
            else
            {
                Console.WriteLine("Entrada no habilitada");

                return false; 
            }
        }

        public string MostrarDatos(Registro Registro)
            => ($"Hay {0} cantidad de personas dentro del local, a las {1}", Ingreso.count, DateTime.Now);

        private bool EsHoy (DateTime fecha)
        {
            var hoy = DateTime.Today;
            return hoy.Year == fecha.Year && hoy.Month == fecha.Month && hoy.Day == fecha.Day;
        }

        public void HorarioMas(List<Registro> Entrada)
        {
            for (int i = 0; i < length; i++)
            {
                
            }
        }

        public void HorarioMenos(List<Registro> Entrada)
        {
            for (int i = 0; i < length; i++)
            {
                
            }
        }
    }
}
