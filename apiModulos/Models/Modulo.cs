using System;
using System.Collections.Generic;

namespace apiModulos.Models;

public partial class Modulo
{
    public int IdModulo { get; set; }

    public string Titulo { get; set; } = null!;

    public string Version { get; set; } = null!;

    public virtual ICollection<Preguntasxmodulo> Preguntasxmodulos { get; set; } = new List<Preguntasxmodulo>();
}
