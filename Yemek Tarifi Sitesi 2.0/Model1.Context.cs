﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Yemek_Tarifi_Sitesi_2._0
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class Dbo_yemektarifiEntities : DbContext
    {
        public Dbo_yemektarifiEntities()
            : base("name=Dbo_yemektarifiEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Tbl_GununYemegi> Tbl_GununYemegi { get; set; }
        public virtual DbSet<Tbl_Kategoriler> Tbl_Kategoriler { get; set; }
        public virtual DbSet<Tbl_Tarifler> Tbl_Tarifler { get; set; }
        public virtual DbSet<Tbl_Yemekler> Tbl_Yemekler { get; set; }
        public virtual DbSet<Tbl_Yonetici> Tbl_Yonetici { get; set; }
        public virtual DbSet<Tbl_Yorumlar> Tbl_Yorumlar { get; set; }
        public virtual DbSet<Tbl_Mesajlar> Tbl_Mesajlar { get; set; }
        public virtual DbSet<Tbl_Hakkimizda> Tbl_Hakkimizda { get; set; }
    
        public virtual ObjectResult<TblYemekKategori_Result> TblYemekKategori()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<TblYemekKategori_Result>("TblYemekKategori");
        }
    }
}
