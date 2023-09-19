import { Controller } from "@hotwired/stimulus"
import debounce from "lodash/debounce"

export default class extends Controller {
  DELAY_SUBMIT = 500

  connect() {
    this.perform = debounce(this.perform, this.DELAY_SUBMIT).bind(this)
  }

  perform() {
    this.element.requestSubmit()

    if ("URLSearchParams" in window) {
      const searchParams = new URLSearchParams(window.location.search)

      const formData = new FormData(this.element)
      const entries = [...formData.entries()]

      entries.map((entry) => searchParams.set(entry[0], entry[1].trim()))

      const newURL = `${window.location.pathname}?${searchParams.toString()}`

      window.history.pushState({ path: newURL }, "", newURL)
    }
  }
}
