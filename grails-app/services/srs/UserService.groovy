package srs

import br.com.igead.Employee
import br.com.igead.Student
import grails.transaction.Transactional

@Transactional
class UserService {

    def addressService

    def createUser( params ) {
        def user
        def address = addressService.createAddress(params)
        if (address.validate()){
            address.save flush: true
        }
        if (params.userType == "employee"){
            user = new Employee()
            user.siape = params?.siape
        }
        else if (params.userType == "employee"){
            user = new Student()
            user.dre = params?.dre
        }

        user.name = params?.name
        user.email = params?.email
        user.institutionalMail = params?.institutionalMail
        user.birthdate = params?.birthdate
        user.cpf = params?.cpf?.replaceAll("[^0-9]", "")
        user.rg = params?.rg?.replaceAll("[^0-9]", "")
        user.address = address
        user.maritalStatus = params?.maritalStatus
        user.sex = params?.sex

        user
    }
}
