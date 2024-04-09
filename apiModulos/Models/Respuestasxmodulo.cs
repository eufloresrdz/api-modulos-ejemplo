using System;
using System.Collections.Generic;

namespace apiModulos.Models;

public partial class Respuestasxmodulo
{
    public int IdRespuesta { get; set; }

    public string Placeholder { get; set; } = null!;

    public int Posicion { get; set; }

    public string? Datasource { get; set; }

    public bool? IsLocal { get; set; }

    public int? MaxLength { get; set; }

    public string? Value { get; set; }

    public int IdTipo { get; set; }

    public int IdPregunta { get; set; }

    public int? Min { get; set; }

    public int? Max { get; set; }

    public string? Height { get; set; }

    public virtual Preguntasxmodulo IdPreguntaNavigation { get; set; } = null!;

    public virtual TiposControl IdTipoNavigation { get; set; } = null!;
}
