namespace Cars.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class car_database_init : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.BodyStyles",
                c => new
                    {
                        BodyStyleId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.BodyStyleId);
            
            CreateTable(
                "dbo.Cars",
                c => new
                    {
                        CarId = c.Int(nullable: false, identity: true),
                        MakeId = c.Int(nullable: false),
                        Name = c.String(nullable: false),
                        Year = c.Int(nullable: false),
                        StyleId = c.Int(nullable: false),
                        BodystyleId = c.Int(nullable: false),
                        TransmissionId = c.Int(nullable: false),
                        Mileage = c.Int(nullable: false),
                        ExteriorColorId = c.Int(nullable: false),
                        InteriorColorId = c.Int(nullable: false),
                        Price = c.Int(nullable: false),
                        Description = c.String(),
                        NumberOfDoors = c.Int(),
                        EngineCylinder = c.Int(),
                        DriveType = c.Int(),
                        FuelType = c.Int(),
                        ComfortFeatures = c.Int(),
                        SeatsFeatures = c.Int(),
                        SafetyFeatures = c.Int(),
                        WindowsFeatures = c.Int(),
                        EntertainmentFeatures = c.Int(),
                        OtherFeatures = c.Int(),
                    })
                .PrimaryKey(t => t.CarId);
            
            CreateTable(
                "dbo.Colors",
                c => new
                    {
                        ColorId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.ColorId);
            
            CreateTable(
                "dbo.DriveTypes",
                c => new
                    {
                        DriveTypeId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.DriveTypeId);
            
            CreateTable(
                "dbo.EngineCylinders",
                c => new
                    {
                        EngineCylinderId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.EngineCylinderId);
            
            CreateTable(
                "dbo.FuelTypes",
                c => new
                    {
                        FuelTypeId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.FuelTypeId);
            
            CreateTable(
                "dbo.Makes",
                c => new
                    {
                        MakeId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.MakeId);
            
            CreateTable(
                "dbo.NumberOfDoors",
                c => new
                    {
                        NumberOfDoorsId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.NumberOfDoorsId);
            
            CreateTable(
                "dbo.States",
                c => new
                    {
                        StateId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.StateId);
            
            CreateTable(
                "dbo.Styles",
                c => new
                    {
                        StyleId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.StyleId);
            
            CreateTable(
                "dbo.Transmissions",
                c => new
                    {
                        TransmissionId = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.TransmissionId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Transmissions");
            DropTable("dbo.Styles");
            DropTable("dbo.States");
            DropTable("dbo.NumberOfDoors");
            DropTable("dbo.Makes");
            DropTable("dbo.FuelTypes");
            DropTable("dbo.EngineCylinders");
            DropTable("dbo.DriveTypes");
            DropTable("dbo.Colors");
            DropTable("dbo.Cars");
            DropTable("dbo.BodyStyles");
        }
    }
}
