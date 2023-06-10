using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace web_ControlAsistencia
{
    public class cls_conexion
    {
        public SqlConnection connection = new SqlConnection("Data Source=MABAPRRATFSD003\\JONATHAN;Initial Catalog=dbs_asistencia;Integrated Security=True");
    }
}