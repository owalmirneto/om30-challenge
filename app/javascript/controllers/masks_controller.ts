import { Controller } from "@hotwired/stimulus"
import { Masks } from "../lib/masks"

const ALLOWED_MASKS = [
  ["cpf", "999.999.999-99"],
  ["cns", "999 9999 9999 9999"],
  ["phone", "(99)99999-9999"],
  ["cep", "99999-999"]
]

export default class extends Controller {
  connect(): void {
    Masks.apply(ALLOWED_MASKS)
  }
}
