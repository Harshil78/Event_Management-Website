﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminSide_EditCountry : System.Web.UI.Page
{
    ACountry a = new ACountry();
    CountryHelper CH = new CountryHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Countryid"] == null)
        {
            Response.Redirect("LogIn.aspx");
        }
        if (!this.IsPostBack)
        {
            DataRow dr = CH.GetSingle(Request.QueryString["Countryid"]);
            TxtCountryName.Text = dr["CountryName"].ToString();
            Image1.ImageUrl = "~/Images/" + dr["Image"].ToString();
            ViewState["image"] = dr["Image"].ToString();
        }
    }
    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        a.CountryName = TxtCountryName.Text;
        a.Countryid = Convert.ToInt16(Request.QueryString["Countryid"]);
        if (ImageUpload.HasFile)
        {
            ImageUpload.SaveAs(Server.MapPath("../Images/" + ImageUpload.FileName));
            a.Image = ImageUpload.FileName;
        }
        else
            a.Image = ViewState["image"].ToString();

        CH.Update(a);
        Response.Redirect("Country.aspx");
    }
}