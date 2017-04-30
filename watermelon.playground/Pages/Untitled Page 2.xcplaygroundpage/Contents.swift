import UIKit

struct Person: CustomStringConvertible {
	
	var firstName: String?
	var secondName: String?

	var isEmpty: Bool {
		guard let fn = firstName, let sn = secondName, !fn.isEmpty, !sn.isEmpty else {
			return true
		}
		return false
	}

	var description: String {
		return "\(firstName ?? "") \(secondName ?? "")"
	}
	
}

class ViewController: UIViewController {
	
	@IBOutlet weak var firstNameTextField: UITextField!
	@IBOutlet weak var secondNameTextField: UITextField!
	@IBOutlet weak var nextButton: UIButton!
	
	var person: Person = Person() {
		didSet {
			nextButton.isEnabled = !person.isEmpty
		}
	}
	
	@IBAction func nextButtonPressed(sender: UIButton) {
		print("person is created \(person)")
	}
	
	@IBAction func textFieldChanged(_ sender: UITextField) {
	
		switch sender {
		case firstNameTextField:
			person.firstName = sender.text

		case secondNameTextField:
			person.secondName = sender.text
		default:
			break
		}
	}
	
	
}

