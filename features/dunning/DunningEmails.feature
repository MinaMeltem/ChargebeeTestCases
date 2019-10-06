
Feature: Dunning emails

	Scenario Outline: Dunning for independent appointment service subscription
		Given I am a <user>
		And I have <subcription>
		And I have unpaid <addon item> in my account
		And I have an invalid payment method in the chargebee system
		When first attempt of transaction in to pay the items in my account failed in ******(same day)
		And my account became a dunning account
		And my invoice status for the item changed to "Payment Due"
		Then I should receive "Transaction Attempt Failed" notification email in the same day of my payment due
		When system attempt to charge my invoice after 1 day of my payment Due
		And transaction attempt failed again
		Then I should receive second "Transaction Attempt Failed" notification email next day of my payment due
		When system attempt to charge my invoice after 4 days of my payment Due
		And transaction attempt failed again
		Then I should receive third "Transaction Attempt Failed" notification email 4 days after of my payment due
		When system attempt to charge my invoice after 8 days of my payment Due
		And transaction attempt failed again
		Then I should receive fourth "Transaction Attempt Failed" notification email 8 days after of my payment due
		And after 17 days passed of my payment due
		Then invoice status should change to "Not Paid"

		Examples:
		|	  user				|	 subscription          |
		| CA new user 	| Service Subscription	 |
		| CA new user 	| Storage Subscription	 |
