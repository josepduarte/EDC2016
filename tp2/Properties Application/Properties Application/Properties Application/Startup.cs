using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Properties_Application.Startup))]
namespace Properties_Application
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
