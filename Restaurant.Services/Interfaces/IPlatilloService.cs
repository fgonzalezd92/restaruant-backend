using Restaurant.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Restaurant.Services.Interfaces
{
    public interface IPlatilloService
    {
        Task<int> Create(Platillo entity);
        Task<int> Delete(Guid id);
        Task<Platillo> Get(Guid id);
        Task<IEnumerable<Platillo>> GetAll();
        Task<int> Update(Platillo entity);
    }
}
