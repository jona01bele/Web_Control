using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace web_ControlAsistencia
{
    public class cls_agregarAsistencia
    {
        private string str_mensaje;

        cls_conexion objconect = new cls_conexion();
        public void fnt_crear(string n, string ed, string comi)
        {
            try
            {
                SqlCommand con = new SqlCommand("SP_agregarAsistencia", objconect.connection);
                con.CommandType = CommandType.StoredProcedure;
                con.Parameters.AddWithValue("@Nombre", n);
                con.Parameters.AddWithValue("@edad", ed);
                con.Parameters.AddWithValue("@comida", comi);
                objconect.connection.Open();
                con.ExecuteNonQuery();
                objconect.connection.Close();
                str_mensaje = "Se ha registrado la asistencia con éxito ";
            }
            catch (Exception)
            { str_mensaje = "Error al registrar los datos"; }

        }
        public string getMensaje() { return this.str_mensaje; }
    }
}