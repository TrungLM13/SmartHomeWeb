package Entity;

public class DeviceInfo {
	private String DeviceId;
	private String DeviceName;
	private String SpendTime;
	private float PowerConsumption;
	private String DateTime;
	private String Location;
	private String DeviceType;
	private String Status;
	
	public String getDeviceId() {
		return DeviceId;
	}
	public void setDeviceId(String deviceId) {
		DeviceId = deviceId;
	}
	public String getDeviceName() {
		return DeviceName;
	}
	public void setDeviceName(String deviceName) {
		DeviceName = deviceName;
	}
	public float getPowerConsumption() {
		return PowerConsumption;
	}
	public void setPowerConsumption(float powerConsumption) {
		PowerConsumption = powerConsumption;
	}
	public String getDateTime() {
		return DateTime;
	}
	public void setDateTime(String dateTime) {
		DateTime = dateTime;
	}
	
	public String getSpendTime() {
		return SpendTime;
	}
	public void setSpendTime(String dateTime) {
		SpendTime = dateTime;
	}
	
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public String getDeviceType() {
		return DeviceType;
	}
	public void setDeviceType(String deviceType) {
		DeviceType = deviceType;
	}
	
	public DeviceInfo(String deviceId, String deviceName, float powerConsumption, String dateTime, String location, String deviceType, String status)
	{
		DeviceId 				= deviceId;
		DeviceName 				= deviceName;
		PowerConsumption 		= powerConsumption;
		DateTime 				= dateTime;
		Location 				= location;
		DeviceType 				= deviceType;
		Status 					= status;
	}
	
	public DeviceInfo()
	{
		DeviceId 				= "Unknow";
		DeviceName 				= "Unknow";
		PowerConsumption 		= 1;
		DateTime 				= "Unknow";
		Location 				= "Unknow";
		DeviceType 				= "Unknow";
		Status 					= "Unknow";
	}
	

};
