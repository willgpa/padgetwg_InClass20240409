using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace padgetwg_InClass20240409
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // This is where you can do any initial page setup.
                // this should only load one when the page is initially 
                // Since you're already defining the list items in the .aspx, there's no need to add them here.
                lblFruits.Items.Add(new ListItem("banana"));
            }

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //this code runs when the user selects a new item from lbfruits list box
            // Ensure the sender is the ListBox and it has at least one selected item.
            if (sender is ListBox listBox && listBox.SelectedItem != null)
            {
                // Update the Label text to display the selected item.
                lblChosenFruit.Text = "You selected: " + listBox.SelectedItem.Text;
            }
        }
    }
}