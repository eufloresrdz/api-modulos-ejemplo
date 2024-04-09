using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace apiModulos.Models;

public partial class EjemploDinamicoContext : DbContext
{
    public EjemploDinamicoContext()
    {
    }

    public EjemploDinamicoContext(DbContextOptions<EjemploDinamicoContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Estado> Estados { get; set; }

    public virtual DbSet<Modulo> Modulos { get; set; }

    public virtual DbSet<Preguntasxmodulo> Preguntasxmodulos { get; set; }

    public virtual DbSet<Respuestasxmodulo> Respuestasxmodulos { get; set; }

    public virtual DbSet<TiposControl> TiposControls { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=DESKTOP-M3QDF86; Database=EjemploDinamico; Trusted_Connection=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Estado>(entity =>
        {
            entity.ToTable("estados");

            entity.Property(e => e.Id)
                .ValueGeneratedNever()
                .HasColumnName("id");
            entity.Property(e => e.Estado1)
                .HasMaxLength(128)
                .HasColumnName("estado");
        });

        modelBuilder.Entity<Modulo>(entity =>
        {
            entity.HasKey(e => e.IdModulo);

            entity.ToTable("modulos");

            entity.Property(e => e.IdModulo).HasColumnName("id_modulo");
            entity.Property(e => e.Titulo)
                .HasMaxLength(128)
                .HasColumnName("titulo");
            entity.Property(e => e.Version)
                .HasMaxLength(10)
                .HasColumnName("version");
        });

        modelBuilder.Entity<Preguntasxmodulo>(entity =>
        {
            entity.HasKey(e => e.IdPregunta);

            entity.ToTable("preguntasxmodulo");

            entity.Property(e => e.IdPregunta).HasColumnName("id_pregunta");
            entity.Property(e => e.IdModulo).HasColumnName("id_modulo");
            entity.Property(e => e.Posicion).HasColumnName("posicion");
            entity.Property(e => e.Texto)
                .HasMaxLength(500)
                .HasColumnName("texto");

            entity.HasOne(d => d.IdModuloNavigation).WithMany(p => p.Preguntasxmodulos)
                .HasForeignKey(d => d.IdModulo)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_preguntasxmodulo_modulos");
        });

        modelBuilder.Entity<Respuestasxmodulo>(entity =>
        {
            entity.HasKey(e => e.IdRespuesta);

            entity.ToTable("respuestasxmodulo");

            entity.Property(e => e.IdRespuesta).HasColumnName("id_respuesta");
            entity.Property(e => e.Datasource)
                .HasMaxLength(500)
                .HasColumnName("datasource");
            entity.Property(e => e.Height)
                .HasMaxLength(10)
                .HasColumnName("height");
            entity.Property(e => e.IdPregunta).HasColumnName("id_pregunta");
            entity.Property(e => e.IdTipo).HasColumnName("id_tipo");
            entity.Property(e => e.IsLocal).HasColumnName("is_local");
            entity.Property(e => e.Max).HasColumnName("max");
            entity.Property(e => e.MaxLength).HasColumnName("max_length");
            entity.Property(e => e.Min).HasColumnName("min");
            entity.Property(e => e.Placeholder)
                .HasMaxLength(50)
                .HasColumnName("placeholder");
            entity.Property(e => e.Posicion).HasColumnName("posicion");
            entity.Property(e => e.Value)
                .HasMaxLength(50)
                .HasColumnName("value");

            entity.HasOne(d => d.IdPreguntaNavigation).WithMany(p => p.Respuestasxmodulos)
                .HasForeignKey(d => d.IdPregunta)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_respuestasxmodulo_preguntasxmodulo");

            entity.HasOne(d => d.IdTipoNavigation).WithMany(p => p.Respuestasxmodulos)
                .HasForeignKey(d => d.IdTipo)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_respuestasxmodulo_tipos_control");
        });

        modelBuilder.Entity<TiposControl>(entity =>
        {
            entity.HasKey(e => e.IdTipo);

            entity.ToTable("tipos_control");

            entity.Property(e => e.IdTipo).HasColumnName("id_tipo");
            entity.Property(e => e.Descripcion)
                .HasMaxLength(128)
                .HasColumnName("descripcion");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
