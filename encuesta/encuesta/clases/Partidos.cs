using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace encuesta.clases
{
    public class Partidos
    {
        public int id { get; set; }
        public int idEncuesta { get; set; }
        public string partidoPolitico { get; set; }

        public Partidos(int id, int idEncuesta, string partidoPolitico)
        {
            this.id = id;
            this.idEncuesta = idEncuesta;
            this.partidoPolitico = partidoPolitico;
        }

        public Partidos() { }

        public static int llenarPartidos(int idEncuesta, string partidoPolitico)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBconn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("llenarPartidos", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@idEncuesta", idEncuesta));
                    cmd.Parameters.Add(new SqlParameter("@partidoPolitico", partidoPolitico));

                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;

        }
    }
}