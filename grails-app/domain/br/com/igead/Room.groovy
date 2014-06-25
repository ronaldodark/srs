package br.com.igead

class Room {

    String name
    int places
    RoomTypeEnum type


    static constraints = {
        name( nullable: false, blank: false)
        places( nullable: true)
    }
}
