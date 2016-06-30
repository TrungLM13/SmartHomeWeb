package Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import Connector.HiveConnector;
import Connector.HiveProcedure;
import Entity.DeviceInfo;

public class DeviceManager {
	
	public HiveConnector		m_conn;
	public HiveProcedure		m_procedure;
	
	public List<DeviceInfo> 	deviceList;
	public static List<DeviceInfo> 	deviceListCpy;
	public Map<String, Double> 	powerConsumptionByDeviceType;
	public Map<String, Double> 	powerConsumptionPerMonth;
	public Map<String, Double> 	powerConsumptionPerDay;
	
	public DeviceManager() {
		deviceList = new ArrayList<DeviceInfo>();
		powerConsumptionByDeviceType = new HashMap<String, Double>();
		powerConsumptionPerMonth = new LinkedHashMap<String, Double>();
		powerConsumptionPerDay= new LinkedHashMap<String, Double>();
		
		// TODO Auto-generated constructor stub
		try{
			System.out.println("Start DeviceMng Service ...");
			m_conn 			= new HiveConnector();
			m_conn.CreateConnection();
			m_procedure   	= new HiveProcedure();
			m_procedure.sp_UseDataBase(m_conn);
			System.out.println("Done Start DeviceMng");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		this.GetListDevice();
		
	}
	
	public List<DeviceInfo> GetListDevice(){
		DeviceInfo device = new DeviceInfo("Device001", "Light", 10, "29/06/2016", "Living Room", "Light", "good");
		DeviceInfo device1 = new DeviceInfo("Device002", "TV", 20, "29/06/2016", "Bed Room", "TV", "good");
		DeviceInfo device2 = new DeviceInfo("Device003", "Air Conditioner", 10, "29/06/2016", "Living Room", "Air Conditioner", "bad");
		DeviceInfo device3 = new DeviceInfo("Device004", "Washing Machine", 10, "29/06/2016", "Kitchen", "Washing Machine", "good");
		DeviceInfo device4 = new DeviceInfo("Device005", "Fridge", 30, "29/06/2016", "Kitchen", "Fridge", "bad");
	
		deviceList.add(device);
		deviceList.add(device1);
		deviceList.add(device2);
		deviceList.add(device3);
		deviceList.add(device4);
		
		deviceList 		= m_procedure.getListDeviceInfo(m_conn);
		deviceListCpy 	= m_procedure.getListDeviceInfo(m_conn);
		return deviceList;
	}
	
	public void GetPowerConsumptionByDeviceType(){
		//Get sum of device power consumption order device type
		//query: Select DeviceType sum(PowerConsumption) from DeviceInfo group by DeviceType
		
		powerConsumptionByDeviceType.clear();
		
		double totalConsumsion = 0;
		
		for(DeviceInfo deviceInfor : deviceList){
			System.out.println(deviceInfor.getDeviceId() + " " + deviceInfor.getDeviceName() + " " + deviceInfor.getPowerConsumption());
			for(DeviceInfo deviceInfor2 : deviceList){
				if(deviceInfor.getDeviceType().equals(deviceInfor2.getDeviceType())){
					totalConsumsion += deviceInfor2.getPowerConsumption();
				}
			}
			powerConsumptionByDeviceType.put(deviceInfor.getDeviceType(), totalConsumsion);
			totalConsumsion = 0;	
		}
		
		System.out.println("TRACK");
		
		Map<String, Double> u = powerConsumptionByDeviceType;	
		Set keys = u.keySet();
		for (Iterator i = keys.iterator(); i.hasNext();) {
			String key = (String) i.next();
		    Double value = (Double) u.get(key);
			System.out.println(key + " " + value);
		}
//		powerConsumptionByDeviceType.put("Light", 2.0);
//		powerConsumptionByDeviceType.put("TV", 1.0);
//		powerConsumptionByDeviceType.put("Air Conditoner", 1.0);
//		powerConsumptionByDeviceType.put("Washing Machine", 1.0);
//		powerConsumptionByDeviceType.put("Fridge", 3.0);
	}
	
	public void GetSumPowerConsumptionPerMonth(String year){
		//Get all device in year
		
		//Get sum power consumption per month of this year
		
		//hard code
		powerConsumptionPerMonth.put("Jan", 10.0);
		powerConsumptionPerMonth.put("Feb", 12.0);
		powerConsumptionPerMonth.put("Mar", 14.0);
		powerConsumptionPerMonth.put("Apr", 22.0);
		powerConsumptionPerMonth.put("May", 20.0);
		powerConsumptionPerMonth.put("Jun", 30.0);
		powerConsumptionPerMonth.put("Jul", 25.0);
		powerConsumptionPerMonth.put("Aug", 27.0);
		powerConsumptionPerMonth.put("Sep", 60.0);
		powerConsumptionPerMonth.put("Oct", 14.0);
		powerConsumptionPerMonth.put("Nov", 15.0);
		powerConsumptionPerMonth.put("Dec", 10.0);
		
	}
	
	public void GetSumPowerConsumptionPerDay(String Device, String month, String year){
		//Get all device in year
		
		//Get sum power consumption per month of this year
		
		//hard code
		powerConsumptionPerDay.put("1", 10.0);
		powerConsumptionPerDay.put("2", 12.0);
		powerConsumptionPerDay.put("3", 14.0);
		powerConsumptionPerDay.put("4", 22.0);
		powerConsumptionPerDay.put("5", 20.0);
		powerConsumptionPerDay.put("6", 30.0);
		powerConsumptionPerDay.put("7", 25.0);
		powerConsumptionPerDay.put("8", 27.0);
		powerConsumptionPerDay.put("9", 60.0);
		powerConsumptionPerDay.put("10", 14.0);
		powerConsumptionPerDay.put("11", 15.0);
		powerConsumptionPerDay.put("12", 10.0);
		powerConsumptionPerDay.put("13", 50.0);
		powerConsumptionPerDay.put("14", 16.0);
		powerConsumptionPerDay.put("15", 19.0);
		powerConsumptionPerDay.put("16", 25.0);
		powerConsumptionPerDay.put("17", 17.0);
		powerConsumptionPerDay.put("18", 45.0);
		powerConsumptionPerDay.put("19", 11.0);
		powerConsumptionPerDay.put("20", 17.0);
		powerConsumptionPerDay.put("21", 11.0);
		powerConsumptionPerDay.put("22", 18.0);
		powerConsumptionPerDay.put("23", 26.0);
		powerConsumptionPerDay.put("24", 28.0);
		powerConsumptionPerDay.put("25", 35.0);
		powerConsumptionPerDay.put("26", 10.0);
		powerConsumptionPerDay.put("27", 10.0);
		powerConsumptionPerDay.put("28", 10.0);
		powerConsumptionPerDay.put("29", 10.0);
		powerConsumptionPerDay.put("30", 10.0);
		
	}
}
