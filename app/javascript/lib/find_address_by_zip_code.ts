import { Loading } from "./loading"
import { AddressType } from "../types/address_type"

class FindAddressByZipCode {
  private zipCode: string

  constructor(zipCode: string) {
    this.zipCode = zipCode
  }

  async fetch(): Promise<AddressType> {
    Loading.show()

    const response = await fetch(`/api/addresses?zip_code=${this.zipCode}`)
      .then(response => response.json())
      .finally(Loading.hide)

    return response
  }
}

export { FindAddressByZipCode }
