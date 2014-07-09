package br.com.igead

class User {
    String name
    String email
    String institutionalMail
    String username
    String password
    Date birthdate
    int cpf
    int rg
    Address address
    MaritalStatusEnum maritalStatus
    String sex

    static hasMany = [schedules: Schedule]

    static constraints = {
        name nullable: false, blank: false
        email nullable: false, blank: false, email: true
        institutionalMail nullable: true, blank: true, email: true
        username nullable: true, blank: false, unique: true
        password nullable: true, blank: false, password: true, minSize: 8, maxSize: 16
        birthdate nullable: true, min: new Date()
        cpf nullable: false, blank: false
        rg nullable: false, blank: false
        maritalStatus nullable: false
        sex nullable: false, maxSize: 1
        address nullable: true
        schedules nullable: true
    }


}
