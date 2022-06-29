using ITSummit2022App.Services;
using Microsoft.Extensions.FileProviders;
using MySqlConnector;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddOptions();
builder.Services.AddRazorPages();
builder.Services.AddTransient(
    provider => new MySqlConnection(provider.GetRequiredService<IConfiguration>()["Database"])
);
builder.Services.AddSingleton(provider => new DatabaseService(provider.GetRequiredService<MySqlConnection>()));

var app = builder.Build();

StaticFileOptions static_file_options = new StaticFileOptions()
{
    FileProvider = new PhysicalFileProvider(Path.Combine(builder.Environment.ContentRootPath, "www")),
    RequestPath = ""
};

app.UseStaticFiles(static_file_options);
app.UseRouting();
app.UseAuthentication();
app.UseAuthorization();

app.UseEndpoints(options =>
{
    options.MapControllers();
    options.MapRazorPages();
});

app.Run();