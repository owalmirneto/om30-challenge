import { Turbo } from "@hotwired/turbo-rails"
import "./controllers"

import "bootstrap"

document.addEventListener("turbo:frame-missing", (event) => {
  event.preventDefault()

  const { response } = event.detail

  Turbo.visit(response.url)
})
