using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class AccesoDatos
    {
        string rutaBD = "Data Source=localhost\\sqlexpress;Initial Catalog=TP_INT_GRUPO8;Integrated Security=True";

        public AccesoDatos()
        {
            // TODO: Agregar aquí la lógica del constructor
        }

        private SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(rutaBD);
            try
            {
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        private SqlCommand ObtenerComando(string consultaSql, SqlConnection cn, Dictionary<string, object> parametros = null)
        {
            SqlCommand comando = new SqlCommand(consultaSql, cn);
            try
            {
                foreach (var parametro in parametros)
                {
                    comando.Parameters.AddWithValue(parametro.Key, parametro.Value);
                }

                return comando;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        private SqlDataAdapter ObtenerAdaptador(String consultaSql, SqlConnection cn)
        {
            SqlDataAdapter adaptador;
            try
            {
                adaptador = new SqlDataAdapter(consultaSql, cn);
                return adaptador;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        private SqlDataAdapter ObtenerAdaptador(SqlCommand cmd)
        {
            SqlDataAdapter adaptador;
            try
            {
                adaptador = new SqlDataAdapter(cmd);
                return adaptador;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        public DataTable ObtenerTabla(String NombreTabla, String Sql)
        {
            DataSet ds = new DataSet();
            SqlConnection con = ObtenerConexion();
            SqlDataAdapter adp = ObtenerAdaptador(Sql, con);
            adp.Fill(ds, NombreTabla);
            con.Close();
            return ds.Tables[NombreTabla];
        }
        public DataTable ObtenerTabla(string NombreTabla, String Sql, Dictionary<string, object> parametros)
        {
            DataSet ds = new DataSet();
            SqlConnection con = ObtenerConexion();
            SqlCommand cmd = ObtenerComando(Sql, con, parametros);
            SqlDataAdapter adap = ObtenerAdaptador(cmd);
            adap.Fill(ds, NombreTabla);
            con.Close();
            return ds.Tables[NombreTabla];
        }
        public int InsertarRegistro(string NombreTabla, String sql)
        {
            DataSet ds = new DataSet();
            int filas = 0;
            SqlConnection con = ObtenerConexion();
            SqlCommand cmd = ObtenerComando(sql, con);
            filas = cmd.ExecuteNonQuery();
            con.Close();
            return filas;
        }
        public int ModificarRegistro(string NombreTabla, String sql, Dictionary<string, object> parametros)
        {
            DataSet ds = new DataSet();
            int filas = 0;
            SqlConnection con = ObtenerConexion();
            SqlCommand cmd = ObtenerComando(sql, con, parametros);
            filas = cmd.ExecuteNonQuery();
            con.Close();
            return filas;
        }
        public int EjecutarProcedimientoAlmacenado(SqlCommand Comando, String NombreSP)
        {
            int FilasCambiadas;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand();
            cmd = Comando;
            cmd.Connection = Conexion;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = NombreSP;
            FilasCambiadas = cmd.ExecuteNonQuery();
            Conexion.Close();
            return FilasCambiadas;
        }
        public Boolean existe(String consulta)
        {
            Boolean estado = false;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, Conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                estado = true;
            }
            Conexion.Close();
            return estado;
        }
        public int EjecutarConsulta(string consultaSQL)
        {
            SqlConnection conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consultaSQL, conexion);
            int filas = cmd.ExecuteNonQuery();
            conexion.Close();
            return filas;
        }
        public int obtenerResultado(string consultaSQL)
        {
            SqlConnection conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consultaSQL, conexion);

            object resultado = cmd.ExecuteScalar();
            conexion.Close();

            if (resultado == null)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(resultado);
            }

        }
    }
}
