Feature: User recieves all emails for dunning
	Scenario Outline: Email user on cadence if dunned
		Given I am a <user>
		And I have <subcription>
		And I have an unpaid <addon>
		And the first attempt to collect my payment was unsuccessful
		When I am dunned
		Then my invoice item status for <addon> should be "Payment Due"
		When <days> pass
		And <additionalCondition>
		Then <expectedOutcome>

		Examples:
		| user | subscription | addon | days | additionalCondition | expectedOutcome |
		| new CA user | Service Subscription | Appointment Fee | 0 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| new CA user | Storage Subscription | Service Fee | 0 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| new CA user | Service Subscription | Appointment Fee | 1 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| new CA user | Storage Subscription | Service Fee | 1 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| new CA user | Service Subscription | Appointment Fee | 8 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| new CA user | Storage Subscription | Service Fee | 8 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| new CA user | Service Subscription | Appointment Fee | 17 | all payment collection attempts failed | my invoice item status for <addon> should be "Not Paid" |
		| new CA user | Storage Subscription | Service Fee | 17 | all payment collection attempts failed | my invoice item status for <addon> should be "Not Paid" |
		| new US user | Service Subscription | Appointment Fee | 0 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| new US user | Storage Subscription | Service Fee | 0 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| new US user | Service Subscription | Appointment Fee | 1 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| new US user | Storage Subscription | Service Fee | 1 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| new US user | Service Subscription | Appointment Fee | 8 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| new US user | Storage Subscription | Service Fee | 8 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| new US user | Service Subscription | Appointment Fee | 17 | all payment collection attempts failed | my invoice item status for <addon> should be "Not Paid" |
		| new US user | Storage Subscription | Service Fee | 17 | all payment collection attempts failed | my invoice item status for <addon> should be "Not Paid" |
		| existing CA user | Service Subscription | Appointment Fee | 0 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| existing CA user | Storage Subscription | Service Fee | 0 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| existing CA user | Service Subscription | Appointment Fee | 1 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| existing CA user | Storage Subscription | Service Fee | 1 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| existing CA user | Service Subscription | Appointment Fee | 8 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| existing CA user | Storage Subscription | Service Fee | 8 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| existing CA user | Service Subscription | Appointment Fee | 17 | all payment collection attempts failed | my invoice item status for <addon> should be "Not Paid" |
		| existing CA user | Storage Subscription | Service Fee | 17 | all payment collection attempts failed | my invoice item status for <addon> should be "Not Paid" |
		| existing US user | Service Subscription | Appointment Fee | 0 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| existing US user | Storage Subscription | Service Fee | 0 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| existing US user | Service Subscription | Appointment Fee | 1 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| existing US user | Storage Subscription | Service Fee | 1 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| existing US user | Service Subscription | Appointment Fee | 8 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| existing US user | Storage Subscription | Service Fee | 8 | another payment collection failed | I should recieve a Transaction Attempt Failed email |
		| existing US user | Service Subscription | Appointment Fee | 17 | all payment collection attempts failed | my invoice item status for <addon> should be "Not Paid" |
		| existing US user | Storage Subscription | Service Fee | 17 | all payment collection attempts failed | my invoice item status for <addon> should be "Not Paid" |
