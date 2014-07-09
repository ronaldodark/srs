package srs

import br.com.igead.Address
import grails.transaction.Transactional

@Transactional
class AddressService {

    def createAddress(params) {
        new Address(
            street: params?.street,
            number: params?.number,
            complement: params?.complement,
            district: params?.district,
            city: params?.city,
            state: params?.state,
            country: params?.country,
            zipcode: params?.zipcode?.replaceAll("[^0-9]", "")
        )
    }
}
