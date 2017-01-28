using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Klantengegevens.Startup))]
namespace Klantengegevens
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
