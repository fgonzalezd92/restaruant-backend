using Restaurant.Data.Entities;
using Restaurant.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;

namespace Restaurant.Repositories.Repositories
{
    public class PlatilloRepository : IPlatilloRepository
    {
        private readonly DbConnection _connection;
        public PlatilloRepository(DbConnection connection)
        {
            _connection = connection;
        }

        public async Task<int> Create(Platillo entity)
        {
            var sql = "INSERT INTO Platillos (Nombre, Tipo, Ingredientes, Peso, Calorias, Precio) Values (@Nombre, @Tipo, @Ingredientes, @Peso, @Calorias, @Precio);";
            using (var con = _connection)
            {
                con.Open();
                var affectedRows = await con.ExecuteAsync(sql, entity);
                return affectedRows;
            }
        }

        public async Task<int> Delete(Guid id)
        {
            var sql = "DELETE FROM Platillos WHERE Id = @Id;";
            using (var con = _connection)
            {
                con.Open();
                var affectedRows = await con.ExecuteAsync(sql, new { Id = id });
                return affectedRows;
            }
        }

        public async Task<Platillo> Get(Guid id)
        {

            using (var con = _connection)
            {
                con.Open();

                return await con.QueryFirstAsync<Platillo>("SELECT Id,Nombre, Tipo, Ingredientes, Peso, Calorias, Precio FROM Platillos WHERE Id = @Id", new { Id = id.ToString()});
            }
        }

        public async Task<IEnumerable<Platillo>> GetAll()
        {
            using (var con = _connection)
            {
                con.Open();

                return await con.QueryAsync<Platillo>("SELECT Id,Nombre, Tipo, Ingredientes, Peso, Calorias, Precio FROM Platillos");
            }
        }

        public async Task<int> Update(Platillo entity)
        {
            var sql = "UPDATE Platillos SET Nombre = @Nombre, Tipo = @Tipo, Ingredientes = @Ingredientes,Peso =  @Peso, Calorias = @Calorias, Precio = @Precio WHERE Id = @Id;";
            using (var con = _connection)
            {
                con.Open();
                var affectedRows = await con.ExecuteAsync(sql, entity);
                return affectedRows;
            }
        }
    }
}
