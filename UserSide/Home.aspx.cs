﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserSide_Home : System.Web.UI.Page
{
    ACountry a = new ACountry();
    CountryHelper CH = new CountryHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = CH.GetData("select * from tblCountry ");
        Repeater1.DataBind();
    }
}