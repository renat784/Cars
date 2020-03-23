namespace Cars.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class init : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Cars",
                c => new
                    {
                        CarId = c.Int(nullable: false, identity: true),
                        Make = c.String(nullable: false),
                        Model = c.String(nullable: false),
                        Year = c.Int(nullable: false),
                        Style = c.String(nullable: false),
                        Bodystyle = c.String(nullable: false),
                        Transmission = c.String(nullable: false),
                        Mileage = c.Int(nullable: false),
                        ExteriorColor = c.String(nullable: false),
                        InteriorColor = c.String(nullable: false),
                        Price = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.CarId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Cars");
        }
    }
}
