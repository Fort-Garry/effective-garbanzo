import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["word"]
  static values = {
    words: Array,
    interval: { type: Number, default: 2000 }
  }

  connect() {
    this.currentIndex = 0
    this.showWord()
    this.startRotation()
  }

  disconnect() {
    this.stopRotation()
  }

  startRotation() {
    this.rotationInterval = setInterval(() => {
      this.rotateWord()
    }, this.intervalValue)
  }

  stopRotation() {
    if (this.rotationInterval) {
      clearInterval(this.rotationInterval)
    }
  }

  rotateWord() {
    this.wordTarget.style.opacity = '0'
    this.wordTarget.style.transform = 'translateY(-10px)'

    setTimeout(() => {
      this.currentIndex = (this.currentIndex + 1) % this.wordsValue.length
      this.showWord()
    }, 150)
  }

  showWord() {
    this.wordTarget.textContent = this.wordsValue[this.currentIndex]
    this.wordTarget.style.opacity = '1'
    this.wordTarget.style.transform = 'translateY(0)'
  }
}
