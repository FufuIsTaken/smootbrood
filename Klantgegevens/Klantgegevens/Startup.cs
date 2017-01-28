using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Klantgegevens.Startup))]
namespace Klantgegevens
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
