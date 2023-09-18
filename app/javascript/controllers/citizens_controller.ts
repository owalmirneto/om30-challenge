import { Controller } from "@hotwired/stimulus"
import { Loading } from "../lib/loading"
import Rails from "rails-ujs"

// Connects to data-controller="citizens"
export default class extends Controller {
  connect(): void {
  }

  toggleStatus (event): void {
    const { value: citizenID } = event.target

    this.sendRequest(citizenID)
  }

  async sendRequest(citizenID: string): Promise<void> {
    const endpoint = `/api/toggle_status_citizens/${citizenID}`

    const requestOptions = {
      method: "PUT",
      headers: { "X-CSRF_Token": Rails.csrfToken() }
    }

    Loading.show()

    await fetch(endpoint, requestOptions).finally(Loading.hide)
  }
}
