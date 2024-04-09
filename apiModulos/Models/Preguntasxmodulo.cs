using System;
using System.Collections.Generic;

namespace apiModulos.Models;

public partial class Preguntasxmodulo
{
    public int IdPregunta { get; set; }

    public string Texto { get; set; } = null!;

    public int IdModulo { get; set; }

    public int Posicion { get; set; }

    public virtual Modulo IdModuloNavigation { get; set; } = null!;

    public virtual ICollection<Respuestasxmodulo> Respuestasxmodulos { get; set; } = new List<Respuestasxmodulo>();
}
