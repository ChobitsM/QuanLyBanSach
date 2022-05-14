namespace QLBanSach.Areas.Admin.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web;

    [Table("SACH")]
    public partial class SACH
    {
        
        [Key]
        [DisplayName("Mã sách")]
        public int MaSach { get; set; }
        [DisplayName("Mã danh mục")]
        public int MaDM { get; set; }
        [Required(ErrorMessage = "Tiêu đề  không  được  để  trống!")]
        [StringLength(100)]
        [DisplayName("Tiêu đề")]
        public string TieuDe { get; set; }
        [Required(ErrorMessage = "Ảnh bìa  không  được  để  trống!")]
        [StringLength(100)]
        [DisplayName("Ảnh bìa")]
        public string AnhBia { get; set; }
        [Required(ErrorMessage = "Giá bán  không  được  để  trống!")]
        [Column(TypeName = "money")]
        [DisplayName("Giá bán (VND)")]
        public decimal GiaBan { get; set; }

        public virtual DMSACH DMSACH { get; set; }
        [NotMapped]
        public HttpPostedFileBase ImageFile { get; set; }
    }
}
