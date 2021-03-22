using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
	public class Log
	{
		public const String INSERT = "INSERT INTO TB_Log(dataInformation, descripition) VALUES (GETDATE(), '{0}')";
		public const String SELECT = "SELECT dataInformation, description FROM TB_Log";

		public DateTime DateInformation { get; set; }
		public string Description { get; set; }
	}
}
