import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ["startingDate", "endingDate"]
  connect() {
    flatpickr(this.startingDateTarget, {
      altInput: true,
      dateFormat: "d.m.Y",
      altFormat: "F j, Y",
      minDate: "today"
    })
    flatpickr(this.endingDateTarget, {
      altInput: true,
      dateFormat: "d.m.Y",
      altFormat: "F j, Y",
      minDate: "today",
      disable: [this.startingDateTarget.value]
    })
  }
}
