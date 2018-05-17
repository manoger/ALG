using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace login_alg_term
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void AutenticaUsuario()
        {
            using (SqlConnection conexao = new SqlConnection("Server = tcp:projetos.database.windows.net,1433; Initial Catalog = AlgSolutions; Persist Security Info = False; User ID = Jacqueline; Password = Projetos123; MultipleActiveResultSets = False; Encrypt = True; TrustServerCertificate = False; Connection Timeout = 30;"))
            {
                conexao.Open();
                // Cria um comando para inserir um novo registro à tabela
                SqlCommand comando = new SqlCommand($"select senha from usuario where email= '{txtEmail.Text}' and senha ='{txtSenha.Text}'", conexao);
                SqlDataReader leitor = comando.ExecuteReader();
                if (leitor.Read())
                {
                    Response.Redirect("https://corgiorgy.com/");
                }
                else
                {
                    erro.Text = "Email ou senha inválidos";
                }
            }
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            AutenticaUsuario();
        }
    }
}