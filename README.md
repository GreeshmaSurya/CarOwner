# CarOwner

This Cadence program is a simple "CarOwner" program with the main objective being to store the basic details of a car owner and their car , which can be seen by entering their phone number.

## Description

This project includes the main contract which has the program to store the details of a car and its owner. The details can be passed into the contract with the help of a transaction. Then the details of the owner and their car can be viewed using the script just by entering their phone number.

## Getting Started

This program can be executed at https://play.flow.com/

### Executing program

Step 1 :

Open a contract and enter the code seen below : 

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

Now deploy the contract.

Step 2 :

Now open a new transaction and type in the below code :

  import CarOwner from 0x01

transaction(firstName: String, lastName: String, carbrand: String, model : String, purchaseyear: String, phno:String) {

    prepare(signer: AuthAccount) {}

    execute {
        CarOwner.addOwner(firstName: firstName, lastName: lastName, carbrand: carbrand , model: model ,  purchaseyear:purchaseyear ,phno:phno )
        log("Owner Added !")
    }
}

Now, Enter the required details and send the transaction.

Step 3 :

Now, to view the details , open a new script and type in the below code :

  import CarOwner from 0x01

pub fun main(phno: String): CarOwner.Details {
    return CarOwner.owners[phno]!
}

Now, enter the phone number and execute the code.

Voila! The details will now de displayed!

## Authors

Greeshma Surya

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
