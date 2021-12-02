using Microsoft.AspNetCore.Mvc;
using Restaurant.Data.Entities;
using Restaurant.Services.Interfaces;
using System;
using System.Threading.Tasks;

namespace Restaurant.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PlatilloController : Controller
    {
        private readonly IPlatilloService _platilloService;

        public PlatilloController(IPlatilloService platilloService)
        {
            _platilloService = platilloService;
        }

        [HttpGet]
        public async Task<IActionResult> GetAll()
        {
            return Ok(await _platilloService.GetAll());
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Platillo>> Get(Guid id)
        {
            return Ok(await _platilloService.Get(id));
        }

        [HttpPost]
        public async Task<IActionResult> Create(Platillo entity)
        {
            return Ok(await _platilloService.Create(entity));
        }

        [HttpDelete("{id}")]
        public async Task<ActionResult<Platillo>> Delete(Guid id)
        {
            return Ok(await _platilloService.Delete(id));
        }

        [HttpPut]
        public async Task<IActionResult> Update(Platillo entity)
        {
            return Ok(await _platilloService.Update(entity));
        }
    }
}
