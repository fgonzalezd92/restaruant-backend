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
            var platillo = await _platilloService.Get(id);

            if(platillo != null)
                return Ok(platillo);
            else
                return NotFound();
        }

        [HttpPost]
        public async Task<IActionResult> Create(Platillo entity)
        {
            var result = await _platilloService.Create(entity);
            if(result > 0)
            {
                return CreatedAtAction("Create",entity);
            }
            return BadRequest();
        }

        [HttpDelete("{id}")]
        public async Task<ActionResult<Platillo>> Delete(Guid id)
        {
            var elements = await _platilloService.Delete(id);
            if(elements > 0)
                return Ok(elements);
            return NotFound();
        }

        [HttpPut]
        public async Task<IActionResult> Update(Platillo entity)
        {
            return Ok(await _platilloService.Update(entity));
        }
    }
}
