using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityDataSourceControl
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void insert_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            detailsGrid.DataBind();
        }
    }
}