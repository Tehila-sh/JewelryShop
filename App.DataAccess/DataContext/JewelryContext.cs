using System;
using System.Collections.Generic;
using App.DataAccess.Entities;
using Microsoft.EntityFrameworkCore;

namespace App.DataAccess.DataContext;

public partial class JewelryContext : DbContext
{
    public JewelryContext()
    {
    }

    public JewelryContext(DbContextOptions<JewelryContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Jewelry> Jewelries { get; set; }

    public virtual DbSet<Order> Orders { get; set; }

    public virtual DbSet<User> Users { get; set; }


    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Jewelry>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__products__3213E83F1ECE3BAD");

            entity.Property(e => e.Id)
                .ValueGeneratedNever()
                .HasColumnName("id");
            entity.Property(e => e.Color)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("color");
            entity.Property(e => e.Degem)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("degem");
            entity.Property(e => e.Img)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("img");
            entity.Property(e => e.Name)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("name");
            entity.Property(e => e.Price)
                .HasColumnType("decimal(10, 2)")
                .HasColumnName("price");
            entity.Property(e => e.Type)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("type");
        });

        modelBuilder.Entity<Order>(entity =>
        {
            entity.HasKey(e => e.OrderId).HasName("PK__My_Order__C3905BAFC411F0D7");

            entity.Property(e => e.OrderId).HasColumnName("OrderID");
            entity.Property(e => e.OrderDate).HasColumnType("datetime");
            entity.Property(e => e.PaymentStatus)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.TotalAmount).HasColumnType("decimal(10, 2)");
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.UserId).HasName("PK__USERS__1788CC4C6602D9D8");

            entity.HasIndex(e => e.Email, "UQ__USERS__A9D105340742D989").IsUnique();

            entity.Property(e => e.CreatedIn)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.Email).HasMaxLength(255);
            entity.Property(e => e.Password).HasMaxLength(255);
            entity.Property(e => e.Username).HasMaxLength(100);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
