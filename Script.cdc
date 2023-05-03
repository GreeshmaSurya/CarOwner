import CarOwner from 0x01

pub fun main(phno: String): CarOwner.Details {
    return CarOwner.owners[phno]!
}
