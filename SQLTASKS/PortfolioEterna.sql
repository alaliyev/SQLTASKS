create table PortfolioImages(Id int primary key identity,Name  nvarchar(15))
create table PortfolioNames(Id int primary key identity,Name  nvarchar(15))
create table PortfolioCategories(Id int primary key identity,Name nvarchar(15))
create table PortfolioLinks (Id int primary key identity,
PortfolioImageId int constraint FK_PortfolioLinks_PortfolioImageId foreign key references PortfolioImages(Id),
PortfolioNameId int constraint FK_PortfolioLinks_PortfolioNameId foreign key references PortfolioNames(Id),
PortfolioCategoryId int constraint FK_PortfolioLinks_PortfolioCategoryId foreign key references PortfolioCategories(Id))

insert into PortfolioImages 
values('Image1'),('Image2'),('Image3'),('Image4'),('Image5'),('Image6'),('Image7'),('Image8'),('Image9')

insert into PortfolioNames
values ('App1'),('Web1'),('Card1'),('App2'),('Web2'),('Card2'),('App3'),('Web3'),('Card3')

insert into PortfolioCategories
values ('Web Design'),('Commercial'),('Advertisement')

insert into PortfolioLinks
values (1,1,1),(2,8,1),(3,4,2),(4,6,2),(5,5,3),(6,7,3),(7,3,1),(8,9,2),(9,8,1)

select pimg.Name, pc.Name, pn.Name from PortfolioLinks pl
join PortfolioImages pimg on pl.PortfolioImageId=pimg.Id
join PortfolioCategories pc on pl.PortfolioCategoryId=pc.Id
join PortfolioNames pn on pl.PortfolioNameId = pn.Id
