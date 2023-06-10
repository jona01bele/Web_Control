using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace web_ControlAsistencia
{
    public class cls_consultarAsistencia
    {

        SqlCommand con; SqlDataReader Lectura;
        cls_conexion objconect = new cls_conexion();
        private int int_asisencia;

        public void fnt_consultal()
        {
            try
            {
                con = new SqlCommand("SP_consultaAsistencia", objconect.connection);
                con.CommandType = CommandType.StoredProcedure;
               // con.Parameters.AddWithValue("@id", id); es cuando lleva parametos
                objconect.connection.Open();
                //con.ExecuteNonQuery();
                Lectura = con.ExecuteReader();
                if (Lectura.Read() == true)
                {
                    int_asisencia = Convert.ToInt16(Lectura[0]);   
                    objconect.connection.Close();                  
                }
            }
            catch (Exception) {  }
        }
        public int getAsistencia () { return this.int_asisencia; }
    }
}