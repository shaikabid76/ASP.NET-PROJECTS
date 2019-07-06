using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using persondetailsinsert;

namespace ASPPersonaldetails
{
    public partial class sowpersonaldetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            person employee = new person();
            List<person> emplist = new List<person>();
            emplist = employee.getdetails();
            personGrid.DataSource = emplist;
            personGrid.DataBind();
        }
    }
}