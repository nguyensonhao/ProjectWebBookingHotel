package DAO;

/**
 *
 * @author admin
 */
public class Room {

    private int idRom;
    private String typeRoom;
    private String nameRoom;

    public Room() {

    }

    public Room(int idRom, String typeRoom, String nameRoom) {
        this.idRom = idRom;
        this.typeRoom = typeRoom;
        this.nameRoom = nameRoom;
    }

    public int getIdRom() {
        return idRom;
    }

    public void setIdRom(int idRom) {
        this.idRom = idRom;
    }

    public String getTypeRoom() {
        return typeRoom;
    }

    public void setTypeRoom(String typeRoom) {
        this.typeRoom = typeRoom;
    }

    public String getNameRoom() {
        return nameRoom;
    }

    public void setNameRoom(String nameRoom) {
        this.nameRoom = nameRoom;
    }

}
