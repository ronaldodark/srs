package br.com.igead

enum RoomTypeEnum {
        FIXED ("Fixa"),
        SPECIAL("Especial"),
        AUDITORIUM("Auditório")

    def name

    RoomTypeEnum(name) {
        this.name = name
    }
}
