namespace App.Presentation.Controllers
{
    public class OrderRequest
    {
        public int UserId { get; set; }

        public DateTime OrderDate { get; set; }

        public decimal TotalAmount { get; set; }

        public string PaymentStatus { get; set; } = null!;
    }
}
