using System;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;

namespace topswagcodeapp
{
    public class Startup
    {
        public void Configure(IApplicationBuilder app)
        {
            app.Run(context =>
            {
                var requestPath = context.Request.Path;
                if(requestPath == "/")
                    return context.Response.WriteAsync("TopSwagCode Website");
                if(requestPath == "/topswagcode")
                    return context.Response.WriteAsync("Even more swag.");

                return context.Response.WriteAsync("Page not found");
            });
        }
    }
}