import CarOwner from 0x01

transaction(firstName: String, lastName: String, carbrand: String, model : String, purchaseyear: String, phno:String) {

    prepare(signer: AuthAccount) {}

    execute {
        CarOwner.addOwner(firstName: firstName, lastName: lastName, carbrand: carbrand , model: model ,  purchaseyear:purchaseyear ,phno:phno )
        log("Owner Added !")
    }
}
