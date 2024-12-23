
using App.BusinessLogic.Interfaces;
using App.BusinessLogic.Profiles;

//using App.BusinessLogic.Profiles;
using App.BusinessLogic.Services;
using App.DataAccess;
using App.DataAccess.DataContext;
using App.DataAccess.Interfaces;
using App.DataAccess.Repository;
using Microsoft.EntityFrameworkCore;

namespace App.Presentation
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);
           
            // Add services to the container.

            builder.Services.AddControllers();
           // Learn more about configuring Swagger / OpenAPI at https://aka.ms/aspnetcore/swashbuckle
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();
            builder.Services.AddScoped<Iusers,UserRepository>();
           builder.Services.AddScoped<Ijewelries, JewelryRepository>();
            builder.Services.AddScoped<Iorders, OrderRepository>();
            builder.Services.AddScoped<IUserServices, UserServices>();
           builder.Services.AddScoped<IJewelriesServices,JewelryServices>();
            builder.Services.AddScoped<IOrdersServices,OrderServices>();

            builder.Services.AddCors(options =>
            {
                options.AddDefaultPolicy(policy =>
                {
                    // Allow any domain- *  or only specific domain-http://localhost:3000
                    policy.WithOrigins("*")
                    .AllowAnyHeader()
                    .AllowAnyMethod()
                    .AllowAnyOrigin();
                });
            });




            builder.Services.AddAutoMapper(typeof(MappingProfile).Assembly);

            builder.Services.AddDbContext <JewelryContext> (options =>
            {
                options.UseSqlServer(builder.Configuration.GetConnectionString("sql"));
            });

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseCors();
            app.UseHttpsRedirection();

            app.UseAuthorization();


            app.MapControllers();

            app.Run();
        }
    }
}
