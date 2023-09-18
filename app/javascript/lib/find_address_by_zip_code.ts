import { AddressType } from "../types/address_type"

class FindAddressByZipCode {
  private zipCode: string

  constructor(zipCode: string) {
    this.zipCode = zipCode
  }

  async fetch(): Promise<AddressType> {
    const response = await fetch(`/api/addresses?zip_code=${this.zipCode}`)
      .then(response => response.json())

    return response
  }
}

export { FindAddressByZipCode }
