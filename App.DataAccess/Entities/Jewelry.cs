using System;
using System.Collections.Generic;

namespace App.DataAccess.Entities;

public partial class Jewelry
{
    public int Id { get; set; }

    public string? Type { get; set; }

    public string? Name { get; set; }

    public string? Degem { get; set; }

    public string? Color { get; set; }

    public decimal? Price { get; set; }

    public string? Img { get; set; }
}
