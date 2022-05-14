namespace QLBanSach.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TAIKHOAN")]
    public partial class TAIKHOAN
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TAIKHOAN()
        {
            DMSACHes = new HashSet<DMSACH>();
        }

        [Key]
        public int MaTK { get; set; }

        [Required]
        [StringLength(60)]
        public string HoTen { get; set; }

        [Required]
        [StringLength(60)]
        public string TenDN { get; set; }

        [Required]
        [StringLength(60)]
        public string MatKhau { get; set; }

        public bool Quyen { get; set; }

        public DateTime? NgaySinh { get; set; }

        [StringLength(10)]
        public string GioiTinh { get; set; }

        [StringLength(100)]
        public string DiaChi { get; set; }

        [StringLength(60)]
        public string Email { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DMSACH> DMSACHes { get; set; }
    }
}
