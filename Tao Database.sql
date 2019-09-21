CREATE DATABASE QLNS 
ON (
	Name = QLNS_Data,
	FileName = 'E:\QLNS_Data.mdf',
	Size = 10MB,
	MaxSize = 1024MB,
	FileGrowth = 10%
)
LOG ON(
	Name = QLNS_Log,
	FileName = 'E:\QLNS_Log.ldf',
	Size = 10MB,
	MaxSize = 1024MB,
	FileGrowth = 10%
)