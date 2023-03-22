using DBClassLib;

namespace Eval_1.Models
{
    public class ListCuestionarioModel
    {
        db_cuestionarioEntities db = new db_cuestionarioEntities();
        public List<Cuestionario> ListarCuestionarios()
        {
            var cuestionarios = from p in db.Cuestionario select p;

            return cuestionarios.ToList();
        }

        public Cuestionario Buscar(int IdCuestionario)
        {
            var cuestionario = (from p in db.Cuestionario where p.IdCuestionario == IdCuestionario select p).FirstOrDefault();
            return cuestionario;
        }

        public void Agregar(Cuestionario itm)
        {
            var personas = new Cuestionario();

            db.Cuestionario.Add(itm);
            db.SaveChanges();
        }

        public void Eliminar(int IdCuestionario)
        {
            var cuestionario = (from p in db.Cuestionario where p.IdCuestionario == IdCuestionario select p).FirstOrDefault();


            db.Cuestionario.Remove(cuestionario);


            db.SaveChanges();

        }

        public void Modificar(Cuestionario itm)
        {
            var cuestionario = (from p in db.Cuestionario where p.IdCuestionario == itm.IdCuestionario select p).FirstOrDefault();

            cuestionario.Nombre = itm.Nombre;
            cuestionario.Descripcion = itm.Descripcion;
            cuestionario.FechaLimite = itm.FechaLimite;

            db.SaveChanges();
        }
    }
}
