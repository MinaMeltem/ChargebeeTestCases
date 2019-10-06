
Feature: Credit Card Attempts

	Scenario Outline: Storage Subscription stays active when the account dunned
		Given I am a billing agent
		And I have dunning <user> account
		And I see customer has <subcriptions> in his account
		When first attempt of transaction is unsuccessful in customer account
		Then customer invoice status should change to "Payment Due"
		And dunning period should start
		And I should see credit card attemps are happening in the system in different days during dunning period

		Examples:
		|	  user				|	 unpaid                 |
		| CA new user 	| Service Subscription		|
		| CA new user 	| Storage Subscription		|
