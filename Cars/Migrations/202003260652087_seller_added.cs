namespace Cars.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class seller_added : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Sellers",
                c => new
                    {
                        SellerId = c.Int(nullable: false, identity: true),
                        FirstName = c.String(nullable: false),
                        LastName = c.String(nullable: false),
                        EmailAdress = c.String(nullable: false),
                        PhoneNumber = c.String(nullable: false),
                        DayTime = c.String(nullable: false),
                        ZIP = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.SellerId);
            
            AddColumn("dbo.Cars", "SellerId", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Cars", "SellerId");
            DropTable("dbo.Sellers");
        }
    }
}
