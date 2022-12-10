import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Import the rangePlugin from the flatpickr library
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "rentalStartDate", "rentalEndDate" ]
  connect() {
    console.log('Flatpickr')
    const startFlatpickrInstance = flatpickr(this.rentalStartDateTarget, {
                                      // Provide an id for the plugin to work
                                      // "plugins": [new rangePlugin({ input: "#booking_rental_end_date"})]
                                      mode: "range",
                                      closeOnSelect: false,
                                      altInput: true,
                                      altFormat: "F j, Y",
                                      dateFormat: "m-d-Y",
                                      inline: true
                                    })
    // startFlatpickrInstance.open() // opens datepickr
    flatpickr(this.rentalEndDateTarget, {})
  }
}
