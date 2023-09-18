import { Controller } from "@hotwired/stimulus"
import { FindAddressByZipCode } from "../lib/find_address_by_zip_code"

// Connects to data-controller="addresses"
export default class extends Controller {
  private client: FindAddressByZipCode
  private inputStreetName: HTMLInputElement
  private inputNeighborhood: HTMLInputElement
  private inputState: HTMLInputElement
  private inputCity: HTMLInputElement
  private inputIBGE: HTMLInputElement

  connect(): void {
    this.inputStreetName = this.findInput(".street-name")
    this.inputNeighborhood = this.findInput(".neighborhood")
    this.inputState = this.findInput(".state")
    this.inputCity = this.findInput(".city")
    this.inputIBGE = this.findInput(".ibge")
  }

  async find(event) {
    const zipCode = event.target.value.replace(/\D/g, "")

    if(zipCode.length != 8) return

    this.client = new FindAddressByZipCode(zipCode)

    this.fillAddressesFields(await this.client.fetch())
  }

  private fillAddressesFields({ streetName, neighborhood, city, state, ibge }) {
    this.inputStreetName.value = streetName
    this.inputNeighborhood.value = neighborhood
    this.inputCity.value = city
    this.inputState.value = state
    this.inputIBGE.value = ibge
  }

  private findInput(className): HTMLInputElement {
    return this.element.querySelector(className)
  }
}
