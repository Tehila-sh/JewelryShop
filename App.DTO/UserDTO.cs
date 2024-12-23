﻿using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace App.DTO
{
    public class UserDTO
    {
        
        public int UserId  { get; set; } 

        public string Username { get; set; } = null!;

        public string Email { get; set; } = null!;

        public string Password { get; set; } = null!;

        public DateTime? CreatedIn { get; set; }

          
    }
}
