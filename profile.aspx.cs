using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class YouTube_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["user"]))
        {
            string user = Request.QueryString["user"].ToString();
            YouTube.User profile = YouTube.User.GetDetails(user);
            // YouTube.Profile profile = YouTube.Profile.GetProfile(user);

            if (profile != null)
            {
                this.Page.Title = user + "'s Profile on nbirkes.com";
                litUser.Text = user;
                lblFirstName.Text = profile.FirstName;
                lblLastName.Text = profile.LastName;
                lblAboutMe.Text = profile.AboutMe;
                lblAge.Text = profile.Age.ToString();
                lblVideoUploadCount.Text = profile.VideoUploadCount.ToString();
                lblVideoWatchCount.Text = profile.VideoWatchCount.ToString();
                hlHomepage.Text = profile.Homepage;
                hlHomepage.NavigateUrl = profile.Homepage;
                lblHometown.Text = profile.Hometown;
                lblGender.Text = profile.Gender;
                lblOccupations.Text = profile.Occupations;
                lblCompanies.Text = profile.Companies;
                lblCity.Text = profile.City;
                lblCountry.Text = profile.Country;
                lblBooks.Text = profile.Books;
                lblHobbies.Text = profile.Hobbies;
                lblMovies.Text = profile.Movies;
                lblRelationship.Text = profile.Relationship;
                lblFriendCount.Text = profile.FriendCount.ToString();
                lblFavoriteVideoCount.Text = profile.FavoriteVideoCount.ToString();
                lblCurrentlyOn.Text = profile.CurrentlyOn.ToString();

                favVids.VideoList = YouTube.Video.GetFavoriteVideoListByUser(user);
                uploadedVids.VideoList = YouTube.Video.GetVideoListByUser(user);

                rptFriends.DataSource = profile.Friends;
                rptFriends.DataBind();
            }
        }
    }
}
