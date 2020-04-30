using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace Second
{
    public partial class Summery : System.Web.UI.Page
    {
        protected string GetNoShowHtml()
        {
            StringBuilder html = new StringBuilder();
            var noData = ResponseRepository.GetRepository().GetAllResponses().Where(r => !r.WillAttend.Value);
            foreach(var rsvp in noData)
            {
                html.Append(string.Format($"<tr><td>{rsvp.Name}</td><td>{rsvp.Email}</td><td>{rsvp.Phone}</td>"));
            }
            return html.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}