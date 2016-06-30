package Connector;

import Entity.ITableName;

public class HiveAPI {
	
	public 	static	String 	s_CreateDataBase 					= 	"CREATE DATABASE IF NOT EXISTS " 		+ ITableName.s_DataBaseName;
	public 	static	String	s_UseDataBase						= 	"USE " 					+ ITableName.s_DataBaseName;
	public 	static	String	s_DropDataBase						= 	"DROP DATABASE "		+ ITableName.s_DataBaseName;
	
	public	static	String 	s_SelectTableDevice				 	= 	"SELECT * FROM " 		+ ITableName.s_Device;
	public 	static	String	s_SelectTablePowerConsumption		=	"SELECT * FROM "		+ ITableName.s_Power;
}
