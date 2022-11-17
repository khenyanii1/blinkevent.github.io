using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.OleDb;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //getsrno();
        }
    }
    private void getsrno()
    {
        int sno;
        String ExcelPath = Server.MapPath("~/Data/Participants.xlsx");
        OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
        mycon.Open();
        OleDbCommand cmd = new OleDbCommand("select max(sno) from [Sheet1$]", mycon);
        OleDbDataReader dr = cmd.ExecuteReader();
        dr.Read();
        if (dr[0].ToString() != "")
        {
            // Response.Write("<br/>"+dr[0].ToString());
            sno = Convert.ToInt32(dr[0].ToString());
            sno = sno + 1;
            //lblid.Text = sno.ToString();
        }
        else
        {
            sno = 1;
            //lblid.Text = sno.ToString();
        }

        mycon.Close();
    }

    private void getname()
    {

        String ExcelPath = Server.MapPath("~/Data/Participants.xlsx");
        OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
        mycon.Open();
        OleDbCommand cmd = new OleDbCommand("select * from [Sheet1$] where Lastname LIKE '" + TextBox1.Text + "'", mycon);
        OleDbDataReader dr = cmd.ExecuteReader();
        dr.Read();

        if (dr.HasRows)
        {
            // Response.Write("<br/>"+dr[0].ToString());
            TextBox2.Text = dr[1].ToString();
            TextBox3.Text = dr[2].ToString();
            TextBox4.Text = dr[3].ToString();
            TextBox5.Text = dr[5].ToString();
            TextBox6.Text = dr[6].ToString();
            TextBox7.Text = dr[7].ToString();
            Label1.Text = "";
            Label3.Text = "";
        }
        else
        {
            Label1.Text = "No Record Found";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }

        mycon.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String ExcelPath = Server.MapPath("~/Data/Participants.xlsx");

        OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
        mycon.Open();

        string query = "INSERT INTO [Sheet1$] VALUES('" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + "-" + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + "-" + "')";
        OleDbCommand cmd = new OleDbCommand(query, mycon);
        cmd.ExecuteNonQuery();
        mycon.Close();
        Label3.Text = "Data Has Been Saved in Excel File Successfully";
        //getsrno();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        //Label3.Text = "";
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        getname();
    }
}