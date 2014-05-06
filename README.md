## Web Forms sample for EF6 support in DynamicData and Entity Data Source control

###Getting Started

This sample shows how you can use Entity Framework 6 in DynamicData and Web Forms Application. Read this post about adding this support http://blogs.msdn.com/b/webdev/archive/2014/02/28/announcing-the-release-of-dynamic-data-provider-and-entitydatasource-control-for-entity-framework-6.aspx

### Run the DynamicData Sample:
1. Build the solution which will do a NuGet package restore
2. Start the DynamicData Provider project
2. It uses Northwind database and Northwind EF 6 Code First Model
3. Browse to Products
4. Filter by Category
5. Add a new Product and show that categories can be added (Foreign Key support)
6. Navigate between Employees and Territories (Many-Many relationship support)
* Navigate to Employees
* Edit an Employee
* Select the Territories that the Employee belongs to. (this shows Many-many)
* Update Employee

For more information on DynamicData see the following resources
* http://www.asp.net/web-forms/videos/aspnet-dynamic-data
* http://msdn.microsoft.com/en-us/library/vstudio/ee845452(v=vs.100).aspx

### Run the Entity DataSource Sample:
1. Build the solution which will do a NuGet package restore
2. Start the EntityDataSource  project
2. It uses Northwind database and Northwind EF 6 Code First Model
3. Default page has a GridView and DetailsView which are bounded to the new EntityDataSourceControl for EF 6
3. Browse to Default page
4. See all the Categories
5. Add a new Category using DetailsView control and see the new item added in the Grid
6. In the GridView you can do sorting (Category Id & name), paging (default pagesize is 10)
7. Edit a Category in the GridView
8. Delete a Category in the GridView

For more information on EntityDataSource Control see the following resources
* http://msdn.microsoft.com/en-us/library/vstudio/cc488502(v=vs.100).aspx
* http://www.asp.net/web-forms/tutorials/getting-started-with-ef/the-entity-framework-and-aspnet-getting-started-part-1
