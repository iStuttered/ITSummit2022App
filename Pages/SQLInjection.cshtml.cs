using ITSummit2022App.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;
using MySqlConnector;

namespace ITSummit2022App.Pages;

public class SQLInjection : PageModel
{
    private DatabaseService _database;
    public List<Dictionary<string, object>> QueryResults = new List<Dictionary<string, object>>();

    public SQLInjection(DatabaseService database)
    {
        _database = database;
    }

    public async Task OnGetAsync(string query)
    {
        if (string.IsNullOrEmpty(query)) return;
            
        string name_query = $"SELECT * FROM employees where lower(fullname) = '{query.ToLower()}';";

        try
        {
            List<Dictionary<string, object>> result = await _database.ExecuteQuery(name_query);
            QueryResults = result;
        }
        catch (MySqlException e)
        {
            QueryResults = new List<Dictionary<string, object>>();
            QueryResults.Add(new Dictionary<string, object>() { {"Server Error", $"Encountered a server error: {e.Message}" } });
        }
    }
}