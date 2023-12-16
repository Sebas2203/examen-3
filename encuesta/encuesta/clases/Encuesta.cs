using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace encuesta.clases
{
    public class Encuesta
    {
        public class encuesta
        {
            public int id { get; set; }
            public string nombre { get; set; }
            public string correo { get; set; }

            public encuesta(int id, string nombre, string correo)
            {
                this.id = id;
                this.nombre = nombre;
                this.correo = correo;
            }

            //public encuesta() { }


            public static int Agregar(string nombre, string correo)
            {
                int retorno = 0;

                SqlConnection Conn = new SqlConnection();
                try
                {
                    using (Conn = DBconn.obtenerConexion())
                    {
                        SqlCommand cmd = new SqlCommand("llenarEncuesta", Conn)
                        {
                            CommandType = System.Data.CommandType.StoredProcedure
                        };
                        cmd.Parameters.Add(new SqlParameter("@nombre", nombre));
                        cmd.Parameters.Add(new SqlParameter("@correo", correo));

                        retorno = cmd.ExecuteNonQuery();
                    }
                }
                catch (System.Data.SqlClient.SqlException ex)
                {
                    retorno = -1;

                }
                finally { Conn.Close(); }

                return retorno;
            }
        }
    }
}