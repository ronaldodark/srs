package br.com.igead

class Employee extends User {
    String siape

    static constraints = {
        siape nullable: false, blank: false, maxSize: 7
    }
}
