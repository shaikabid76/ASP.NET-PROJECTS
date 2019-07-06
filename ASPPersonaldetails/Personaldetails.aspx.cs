using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using persondetailsinsert;

namespace ASPPersonaldetails
{
    public partial class Personaldetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            person employee = new person();
            employee.Firstname = txtfirstname.Text;
            employee.Lastname = txtlastname.Text;
            employee.City = txtcity.Text;
           employee.Email = txtemail.Text;
            int rowcount = employee.insert_rec(employee);
            if (rowcount > 0)
           {
                lblresult.Text = "Record inserted ";
               lblresult.ForeColor = System.Drawing.Color.Beige;
            }
           else
            {
                lblresult.Text = "Sorry dear something went wrong ";
                lblresult.ForeColor = System.Drawing.Color.Gray;
          }
     }

        protected void rffvlastname_ServerValidate(object source, ServerValidateEventArgs e)
        {
            if(e.Value.Length>=8 && e.Value.Length <=12)
            {
                e.IsValid = true;
            }
            else
            {
                e.IsValid = false;
            }
                    
        }

    }
}  