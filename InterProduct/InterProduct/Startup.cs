using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(InterProduct.Startup))]
namespace InterProduct
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
