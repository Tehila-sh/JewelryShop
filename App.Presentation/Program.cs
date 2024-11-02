
using App.BusinessLogic.Interfaces;
using App.BusinessLogic.Services;
using App.DataAccess;
using App.DataAccess.Interfaces;
using App.DataAccess.Repository;

namespace App.Presentation
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);
           
            // Add services to the container.

            builder.Services.AddControllers();
            // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();
            builder.Services.AddScoped<Iusers,User>();
            builder.Services.AddScoped<Ijewelries, Jewelry>();
            builder.Services.AddScoped<Iorders, Order>();
            builder.Services.AddScoped<IUserServices, UserServices>();
            builder.Services.AddScoped<IJewelriesServices,JewelryServices>();
            builder.Services.AddScoped<IOrdersServices,OrderServices>();

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseHttpsRedirection();

            app.UseAuthorization();


            app.MapControllers();

            app.Run();
        }
    }
}
