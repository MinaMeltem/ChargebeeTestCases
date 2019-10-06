
Feature: Credit Card Attempts

	Scenario Outline: Attempt to charge credit cards for dunned users
		Given I am a billing agent
		And I have dunned <user> account
		And the user has <subcriptions> 
		When first attempt to collect payment was unsuccessful 
		Then the account becomes dunned
		And the invoice item status should be "Payment Due"
		And dunning period should start
		And transaction attemps should be seen in "Transaction" section during the dunning period

		Examples:
		| user 			| subscription |
		| new CA user 		| Service Subscription |
		| new CA user 		| Storage Subscription |
		| new US user 		| Service Subscription |
		| new US user 		| Storage Subscription |
		| existing CA user	| Service Subscription |
		| existing CA user	| Storage Subscription |
		| existing US user 	| Service Subscription |
		| existing US user 	| Storage Subscription |
		
	
