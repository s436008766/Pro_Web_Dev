using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            
        }

    }

    


    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }

    

   

    

    protected void Btn1_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }

    protected void Btn2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }


    protected void Btn3_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View3);
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        FormView1.ChangeMode(FormViewMode.Edit);
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        FormView2.ChangeMode(FormViewMode.Edit);
    }

    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        FormView3.ChangeMode(FormViewMode.Edit);
    }
}