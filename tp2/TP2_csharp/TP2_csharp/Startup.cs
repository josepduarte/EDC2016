using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TP2_csharp.Startup))]
namespace TP2_csharp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
