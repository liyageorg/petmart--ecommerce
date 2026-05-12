using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{

	SqlConnection con = new SqlConnection(@"server= LIYAGEORGE\SQLEXPRESS01;database= PET_MART;Integrated security= True");

	public string balancheck(string accno)
	{
		string bal = "select Balance_amount from Account where Acc_num=" + accno;

		SqlCommand cmd = new SqlCommand(bal, con);
		con.Open();

		object result = cmd.ExecuteScalar();

		con.Close();

		return result != null ? result.ToString() : "";
	}

	

	public int updateamount(string accno, int uid, decimal newbalance)
	{
		string upd = "update Account set Balance_amount=" + newbalance +
					 " where User_id=" + uid + " and Acc_num=" + accno;

		SqlCommand cmd = new SqlCommand(upd, con);
		con.Open();
		int i = cmd.ExecuteNonQuery();
		con.Close();
		return i;
	}




	public string GetData(int value)
	{
		return string.Format("You entered: {0}", value);
	}

	public CompositeType GetDataUsingDataContract(CompositeType composite)
	{
		if (composite == null)
		{
			throw new ArgumentNullException("composite");
		}
		if (composite.BoolValue)
		{
			composite.StringValue += "Suffix";
		}
		return composite;
	}
}
