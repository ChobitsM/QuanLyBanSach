namespace QLBanSach.Areas.Admin.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class WEBSACH : DbContext
    {
        public WEBSACH()
            : base("name=WEBSACH1")
        {
        }

        public virtual DbSet<DMSACH> DMSACHes { get; set; }
        public virtual DbSet<SACH> SACHes { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<TAIKHOAN> TAIKHOANs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<DMSACH>()
                .HasMany(e => e.SACHes)
                .WithRequired(e => e.DMSACH)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<DMSACH>()
                .HasMany(e => e.TAIKHOANs)
                .WithMany(e => e.DMSACHes)
                .Map(m => m.ToTable("ChiTiet").MapLeftKey("MaDM").MapRightKey("MaTK"));

            modelBuilder.Entity<SACH>()
                .Property(e => e.GiaBan)
                .HasPrecision(19, 4);

            modelBuilder.Entity<TAIKHOAN>()
                .Property(e => e.TenDN)
                .IsUnicode(false);

            modelBuilder.Entity<TAIKHOAN>()
                .Property(e => e.MatKhau)
                .IsUnicode(false);

            modelBuilder.Entity<TAIKHOAN>()
                .Property(e => e.Email)
                .IsUnicode(false);
        }
    }
}
