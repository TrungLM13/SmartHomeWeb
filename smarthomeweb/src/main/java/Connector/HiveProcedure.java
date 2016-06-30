package Connector;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Entity.DeviceInfo;

public class HiveProcedure {
	
	public void sp_UseDataBase(HiveConnector conn){
		
		try {
			conn.getM_Statement().execute(HiveAPI.s_UseDataBase);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Can not use database. DataBase is exits");
			e.printStackTrace();
		}
	}
	
	public List<DeviceInfo> getListDeviceInfo(HiveConnector conn){
		
		
		ArrayList<DeviceInfo> sensor_logs = new ArrayList<DeviceInfo>();
		
		try {
			
			ResultSet m_ResultSet2 = conn.getM_Statement().executeQuery(HiveAPI.s_SelectTablePowerConsumption);			
			if (m_ResultSet2 != null) {
				while (m_ResultSet2.next()) {
					DeviceInfo log = new DeviceInfo();
					log.setDeviceId(m_ResultSet2.getString(1));
					log.setSpendTime(m_ResultSet2.getString(3));
					log.setDateTime(m_ResultSet2.getString(2));
					log.setPowerConsumption(m_ResultSet2.getFloat(4));
					
					sensor_logs.add(log);
				}
			}
			
			ResultSet m_ResultSet = conn.getM_Statement().executeQuery(HiveAPI.s_SelectTableDevice);		
			if (m_ResultSet != null) {
				while (m_ResultSet.next()) {
					for (int i = 0; i < sensor_logs.size(); ++i){
						if(sensor_logs.get(i).getDeviceId().equals(m_ResultSet.getString(1))){
							sensor_logs.get(i).setDeviceName(m_ResultSet.getString(2));
							sensor_logs.get(i).setLocation(m_ResultSet.getString(3));
							sensor_logs.get(i).setStatus(m_ResultSet.getString(4));
							sensor_logs.get(i).setDeviceType(m_ResultSet.getString(5));
						}
					}
				}
			}	
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
		return sensor_logs;
	}

}
