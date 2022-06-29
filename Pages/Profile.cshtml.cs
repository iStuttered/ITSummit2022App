using ITSummit2022App.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace ITSummit2022App.Pages;

public class Profile : PageModel
{
    private DatabaseService _database;
    public List<Dictionary<string, object>> QueryResult;

    public Profile(DatabaseService database)
    {
        _database = database;
    }

    public async Task OnGetAsync(int user, CancellationToken cancellationToken)
    {
        if (user < 1) return;

        string query = "select * from users where userid = " + user;

        List<Dictionary<string, object>> result = await _database.ExecuteQuery(query, cancellationToken);

        QueryResult = result;
    }
}