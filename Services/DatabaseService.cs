using System.Data;
using System.Data.Common;
using Dapper;
using MySqlConnector;

namespace ITSummit2022App.Services;

public class DatabaseService
{
    private readonly DbConnection _connection;

    public DatabaseService(DbConnection connection)
    {
        _connection = connection;
    }

    public async Task<List<Dictionary<string, object>>> ExecuteQuery(string query, CancellationToken cancellationToken = default)
    {
        List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
        
        await using DbDataReader result = await _connection.ExecuteReaderAsync(query);
        while (await result.ReadAsync(cancellationToken))
        {
            Dictionary<string, object> row = new Dictionary<string, object>();
            for (int i = 0; i < result.FieldCount; i++)
            {
                row[result.GetName(i)] = result.GetValue(i);
            }

            rows.Add(row);
        }
        
        return rows;
    }
}
