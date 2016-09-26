namespace tp1.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class au_fname : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "au_fname", c => c.String());
            AddColumn("dbo.AspNetUsers", "au_lname", c => c.String());
            DropColumn("dbo.AspNetUsers", "FullName");
        }
        
        public override void Down()
        {
            AddColumn("dbo.AspNetUsers", "FullName", c => c.String());
            DropColumn("dbo.AspNetUsers", "au_lname");
            DropColumn("dbo.AspNetUsers", "au_fname");
        }
    }
}
