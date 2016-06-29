package Entity;

public class Room {
	private String RoomId;
	private String RoomName;
	
	private String getRoomId() {
		return RoomId;
	}
	private void setRoomId(String roomId) {
		RoomId = roomId;
	}
	private String getRoomName() {
		return RoomName;
	}
	private void setRoomName(String roomName) {
		RoomName = roomName;
	}
	
	Room(String roomId, String roomName){
		 RoomId = roomId;
		 RoomName = roomName;
	}
	
}
