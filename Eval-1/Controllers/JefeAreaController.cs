using Microsoft.AspNetCore.Mvc;
using Eval_1.Models;
using DBClassLib;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace Eval_1.Controllers
{
    public class JefeAreaController : Controller
    {
        ListCuestionarioModel cuestionario = new ListCuestionarioModel();
        db_cuestionarioEntities db = new db_cuestionarioEntities();

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult ListTicket()
        {
            var puestos = from p in db.Puesto select p;
            ViewBag.Puestos = new SelectList(puestos.ToList(), "IdPuesto", "NombrePuesto");
            return View(cuestionario.ListarCuestionarios());
        }

        public IActionResult AddTicket()
        {
            var puestos = from p in db.Puesto select p;
            ViewBag.Puestos = new SelectList(puestos.ToList(), "IdPuesto", "NombrePuesto");
            return View();
        }

        public IActionResult AddNewCuestionario(string Nombre, string Descripcion, System.DateTime FechaLimite)
        {
            Cuestionario itm = new Cuestionario();
            itm.Nombre = Nombre;
            itm.Descripcion = Descripcion;
            itm.FechaLimite = FechaLimite;
            cuestionario.Agregar(itm);
            return RedirectToAction("ListTicket");
        }

        public IActionResult BuscarCuestionario(int IdCuestionario)
        {
            return Json(cuestionario.Buscar(IdCuestionario));
        }

        public ActionResult RemoveCuestionario(int IdCuestionario)
        {
            cuestionario.Eliminar(IdCuestionario);

            return RedirectToAction(nameof(Index));
        }

        public ActionResult EditCuestionario(string IdCuestionario, string Nombre, string Descripcion, System.DateTime FechaLimite)
        {
            Cuestionario itm = new Cuestionario();
            itm.IdCuestionario = int.Parse(IdCuestionario);
            itm.Nombre = Nombre;
            itm.Descripcion = Descripcion;
            itm.FechaLimite = FechaLimite;
            cuestionario.Modificar(itm);
            return RedirectToAction("ListTicket");
        }

    }
}
