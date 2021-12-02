using Restaurant.Data.Entities;
using Restaurant.Repositories.Interfaces;
using Restaurant.Services.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Restaurant.Services.Services
{
    public class PlatilloService : IPlatilloService
    {
        private readonly IPlatilloRepository _platilloRepository;
        public PlatilloService(IPlatilloRepository platilloRepository)
        {
            _platilloRepository = platilloRepository;
        }

        public async Task<Platillo> Get(Guid id)
        {
            return await _platilloRepository.Get(id);
        }

        public async Task<int> Create(Platillo entity)
        {
            return await _platilloRepository.Create(entity);
        }
        public async Task<int> Delete(Guid id)
        {
            return await _platilloRepository.Delete(id);
        }

        public async Task<int> Update(Platillo entity)
        {
            return await _platilloRepository.Update(entity);
        }

        public async Task<IEnumerable<Platillo>> GetAll()
        {
            return await _platilloRepository.GetAll();
        }
    }
}
