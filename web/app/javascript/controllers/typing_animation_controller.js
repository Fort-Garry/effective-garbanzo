import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["text", "cursor"]
  static values = {
    text: String,
    speed: { type: Number, default: 50 },
    cursor: { type: Boolean, default: true }
  }

  connect() {
    this.currentIndex = 0
    this.type()
  }

  type() {
    if (this.currentIndex < this.textValue.length) {
      this.textTarget.textContent += this.textValue.charAt(this.currentIndex)
      this.currentIndex++
      setTimeout(() => this.type(), this.speedValue)
    } else if (this.hasCursorTarget && !this.cursorValue) {
      this.cursorTarget.remove()
    }
  }
}
