package br.com.igead

class Address {

    String street
    String number
    String complement
    String district
    String city
    String state
    String country
    String zipcode

    static constraints = {
        street nullable: false, blank: false
        number nullable: false, blank: false
        complement nullable: true, blank: true
        district nullable: true, blank: true
        city nullable: false, blank: false
        state nullable: false, blank: false
        country nullable: false, blank: false
        zipcode nullable: false, blank: false
    }

    String toString() {
        "${street}, ${number}, ${complement}, ${district}, ${city}, ${state}, ${country}, ${zipcode}"
    }
}
