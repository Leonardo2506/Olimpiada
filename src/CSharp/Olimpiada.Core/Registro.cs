using System; 
using System.Collections.Generic; 

namespace Olimpiada.Core 
{
    public class Registro 
    {
        public Local idLocal {get; set;}

        public DateTime FechaHora {get; set;}

        public Registro ()
        {
        }

        public Registro(DateTime fechaHora)
        {
            FechaHora = fechaHora;
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