pub contract CarOwner {

    pub var owners: {String: Details}
    
    pub struct Details {
        pub let firstName: String
        pub let lastName: String
        pub let carbrand: String
        pub let model: String
        pub let purchaseyear: String
        pub let phno: String

        init(_firstName: String, _lastName: String, _carbrand: String,_model: String,_purchaseyear : String,_phno : String) {
            self.firstName = _firstName
            self.lastName = _lastName
            self.carbrand = _carbrand
            self.model = _model
            self.purchaseyear = _purchaseyear
            self.phno = _phno
        }
    }

    pub fun addOwner(firstName: String, lastName: String, carbrand: String, model: String,purchaseyear: String, phno: String ) {
        let newOwner = Details(_firstName: firstName, _lastName: lastName, _carbrand:carbrand, _model:model, _purchaseyear: purchaseyear, _phno: phno)
        self.owners[phno] = newOwner
    }

    init() {
        self.owners = {}
    }

}
