namespace QLBanSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SACH")]
    public partial class SACH
    {
        [Key]
        [DisplayName("Mã sách")]
        public int MaSach { get; set; }
        [Required(ErrorMessage = "Mã danh mục không được để trống!!!")]
        [DisplayName("Mã danh mục")]
        public int MaDM { get; set; }

        [StringLength(100)]
        [Required(ErrorMessage = "Tiêu đề không được để trống!!!")]
        [DisplayName("Tiêu đề")]
        public string TieuDe { get; set; }

        [StringLength(100)]
        [Required(ErrorMessage = "Ảnh bìa không được để trống!!!")]
        [DisplayName("Ảnh bìa")]
        public string AnhBia { get; set; }

        [Column(TypeName = "money")]
        [Required(ErrorMessage = "Giá bán không được để trống!!!")]
        [DisplayName("Giá bán")]
        public decimal GiaBan { get; set; }

        public virtual DMSACH DMSACH { get; set; }
    }
}
