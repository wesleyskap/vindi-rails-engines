import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="vindi-checkout"
export default class extends Controller {
  static targets = [ "publicKey", "holderName", "cardNumber", "expiry", "cvv", "tokenInput" ]

  tokenizeCard(event) {
    event.preventDefault()
    
    const vindi = new Vindi(this.publicKeyTarget.value)
    
    const cardData = {
      holder_name: this.holderNameTarget.value,
      card_number: this.cardNumberTarget.value.replace(/\s+/g, ''),
      card_expiration: this.expiryTarget.value,
      card_cvv: this.cvvTarget.value
    }

    vindi.createToken(cardData)
      .then((response) => {
        // Set the token into the hidden field and submit the form
        this.tokenInputTarget.value = response.token
        this.element.submit()
      })
      .catch((error) => {
        alert("Payment Error: " + error.message)
      })
  }
}
