using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TesteTP3.Startup))]
namespace TesteTP3
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
