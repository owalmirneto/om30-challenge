import Inputmask from "inputmask"

class Masks {
  static apply(AllowedMasks: Array<Array<string>>): void {
    for (const [type, mask] of AllowedMasks) {
      Inputmask({ mask }).mask(Masks.getElement(type))
    }
  }

  private static getElement(type: string) {
    return document.querySelectorAll(`[data-mask="${type}"]`)
  }
}

export { Masks }
