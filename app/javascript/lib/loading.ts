const INVISIBLE_CLASS_NAME = "visually-hidden"

class Loading {
  private static instance: Loading

  private element: HTMLElement

  constructor(elementID = "loading") {
    this.element = <HTMLElement>document.getElementById(elementID)
  }

  public static show(): void {
    Loading.classList().remove(INVISIBLE_CLASS_NAME)
  }

  public static hide(): void {
    Loading.classList().add(INVISIBLE_CLASS_NAME)
  }

  private static classList(): DOMTokenList {
    Loading.instance = Loading.instance ?? new Loading()

    return Loading.instance.element.classList
  }
}

export { Loading }
