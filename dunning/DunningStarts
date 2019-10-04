
Feature: Dunning Period Subscriptions


	Scenario Outline: Dunning for storage subscription
		Given I am a <user>
		And I have monthly <storage> subscription
		And I have an invalid payment method in chargebee system
		When my first attempt to pay monthly storage invoice failed
		And I have past due amount
		Then my account should be dunned
		And my invoice item status displays "Payment Due"
		And my dunning period starts


		Examples:
		|	user		  		|	storage             |
		| CA new user 	| 5 X 10 Storage Plan |
		| US new user 	| 5 X 10 Storage Plan |




	Scenario Outline: Dunning for service subscription
		Given I am a <user>
		And I have an <service> subscription
		And I have <addon item> in the subscription
		And I have an invalid payment method in the chargebee system
		When my first attempt to pay invoiced item  failed
		And  invoice item status displays "Payment Due"
		Then my account should be dunned
		And my dunning period should start

		Examples:
		|	user  				|	Appointment subcriptio      | Addon Item		        |
		| CA new user 	| Service Subscription				| Appointment Service 	|
		| CA new user 	| Service Subscription				| Busy Day Fee		 	    |
