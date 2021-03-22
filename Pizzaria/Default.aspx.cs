using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;
using Model;
using Proxy;

namespace Pizzaria
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			ReloadTable();
		}

		protected void btnInserir_Click(object sender, EventArgs e)
		{
			var pizza = new Pizza()
			{
				Descricao = txbDescricao.Text,
				Valor = txbValor.Text
			};

			if (this.Crud().Insert(pizza))
			{
				lblMsg.Text = "Inserted Record! ";
				SaveLog("Inserted Record! ");
				ReloadTable();
			}
			else
			{
				lblMsg.Text = "Error When Inserting! ";
				SaveLog("Error When Inserting! ");
			}
		}

		private void ReloadTable()
		{
			GVPizza.DataSource = this.Crud().Select();
			GVPizza.DataBind();
			SaveLog("Consulted Information! ");
		}

		private IPizzaDB Crud()
		{
			return new PizzaDB();
		}

		private void SaveLog(string msg)
		{
			IMonitore proxy = new Proxy.Proxy(new LogDB());
			proxy.SaveLog(msg);
		}

		private List<Log> GetLogs()
		{
			IMonitore proxy = new Proxy.Proxy(new LogDB());
			return proxy.Select();
		}

		protected void btnNovo_Click(object sender, EventArgs e)
		{
			txbDescricao.Text = "";
			txbValor.Text = "";
			lblMsg.Text = "";
			GVLog.DataSource = null;
			GVLog.DataBind();
			txbDescricao.Focus();
		}

		protected void btnLog_Click(object sender, EventArgs e)
		{
			GVLog.DataSource = GetLogs();
			GVLog.DataBind();
			SaveLog("Consulted Logs");
		}

		protected void btnDeletar_Click(object sender, EventArgs e)
		{
			//	var pizza = new Pizza()
			//	{
			//		Descricao = txbDescricao.Text,
			//		Valor = txbValor.Text
			//	};

			//	new PizzaDB().Delete(pizza);

			//	lblMsg.Text = "Deleted Order! ";
			//	GVPizza.DataSource = new PizzaDB().Select();
			//	GVPizza.DataBind();
		}

	}
}