create table Pricing(
Id int primary key identity,
Price int)

create table Features (
Id int primary key identity,
Name nvarchar (20))

create table FeatureByPrice (
Id int primary key identity,
PricingId int constraint FK_FeatureByPrice_PricingId foreign key references Pricing(Id),
FeatureId  int constraint FK_FeatureByPrice_FeatureId foreign key references Features(Id))

insert into Pricing
values (9),(29),(49)
insert into Features 
values ('Feature1'),('Feature2'),('Feature3'),('Feature4'),('Feature5'),('Feature6'),('Feature7')
insert into FeaturebyPrice
values (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7)

select * from FeatureByPrice fp
join Pricing p on fp.PricingId=p.Id join Features f on fp.FeatureId=f.Id


