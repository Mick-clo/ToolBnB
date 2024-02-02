import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="adding-button-for-profile-picture"
export default class extends Controller {
  static targets = ["modal"]

  openModal(event) {
    event.currentTarget.classList.add("d-none")
    this.modalTarget.classList.remove("d-none")
  }

  updatePicture(event) {
    event.currentTarget.classList.remove("d-none")
    this.modalTarget.classList.add("d-none")
  }

  connect() {
  }
}
