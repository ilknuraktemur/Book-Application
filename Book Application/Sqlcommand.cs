using System.Data.SqlClient;

namespace WebApplication8
{
    internal class Sqlcommand
    {
        private string query;
        private SqlConnection cnn;

        public Sqlcommand(string query, SqlConnection cnn)
        {
            this.query = query;
            this.cnn = cnn;
        }
    }
}