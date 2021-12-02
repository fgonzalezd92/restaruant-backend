using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Restaurant.Repositories.Interfaces
{
    public interface IBaseRepository<T> where T : class
    {
            Task<T> Get(Guid id);
            Task<IEnumerable<T>> GetAll();
            Task<int> Create(T entity);
            Task<int> Update(T entity);
            Task<int> Delete(Guid id);
    }
}
