
Feature: Status of the subscriptions after dunning period ends reamins active

	Scenario Outline: Storage Subscription stays active when the account dunned
		Given I am a dunning <user>
		And I have an active <subscriptions> in my account
		When my dunning period ends
		And invoice status becomes "Not Paid"
		Then the subscriptions in my account remain active

		Examples:
		|	  USER				|	 SUBSCRIPTION           |
		| CA new user 	| Service Subscription		|
		| CA new user 	| Storage Subscription		|
