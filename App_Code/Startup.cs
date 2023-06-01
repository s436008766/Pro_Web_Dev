using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Pro_Web_Dev.Startup))]
namespace Pro_Web_Dev
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
