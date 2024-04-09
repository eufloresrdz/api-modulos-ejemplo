using System;
using System.Collections.Generic;

namespace apiModulos.Models;

public partial class TiposControl
{
    public int IdTipo { get; set; }

    public string Descripcion { get; set; } = null!;

    public virtual ICollection<Respuestasxmodulo> Respuestasxmodulos { get; set; } = new List<Respuestasxmodulo>();
}
