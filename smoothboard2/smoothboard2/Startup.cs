using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(smoothboard2.Startup))]
namespace smoothboard2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
