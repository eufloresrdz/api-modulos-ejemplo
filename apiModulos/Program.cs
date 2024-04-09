using apiModulos.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System.Text.Json.Serialization;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.ConfigureHttpJsonOptions(options => { options.SerializerOptions.ReferenceHandler = ReferenceHandler.IgnoreCycles; });
builder.Services.AddDbContext<EjemploDinamicoContext>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.MapGet("/modulos", async (EjemploDinamicoContext context) =>
{
    var modulos = await context.Modulos
    .Include(modulo => modulo.Preguntasxmodulos)
    .ThenInclude(Preguntasxmodulo => Preguntasxmodulo.Respuestasxmodulos)
    .ToListAsync();

    return modulos;
})
.WithName("ObtenerModulos")
.WithOpenApi();

app.MapGet("/modulos-titulos", async (EjemploDinamicoContext context) =>
{
    var modulos = await context.Modulos
    .ToListAsync();

    return modulos;
})
.WithName("ObtenerTitulosModulos")
.WithOpenApi();

app.MapGet("/modulos/{id}", async (EjemploDinamicoContext context, int id) =>
    await context.Modulos
    .Include(modulo => modulo.Preguntasxmodulos)
    .ThenInclude(Preguntasxmodulo => Preguntasxmodulo.Respuestasxmodulos)
    .Where(m => m.IdModulo == id).SingleOrDefaultAsync() is Modulo modulo ?
    Results.Ok(modulo) :
    Results.NotFound("No se ha encontrado el modulo"))
.WithName("ObtenerModuloPorId")
.WithOpenApi();

app.MapPost("/modulo", async (EjemploDinamicoContext context, Modulo modulo) =>
{    
    context.Modulos.Add(modulo);
    await context.SaveChangesAsync();    
    return Results.Created($"/modulo/{modulo.IdModulo}", modulo);
})
.WithName("CrearModulo")
.WithOpenApi();

app.MapGet("/estados", async (EjemploDinamicoContext context) =>
{
    var estados = await context.Estados
    .ToListAsync();

    return estados;
})
.WithName("ObtenerEstados")
.WithOpenApi(); 

app.Run();