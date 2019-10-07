Feature: Dun an account
	Scenario Outline: Dun an account with unpaid storage/service subscription
		Given I am a billing agent
		And I have a dunned <user> account with <subscriptions>
		When the first attempt to collect unpaid invoice item was unsuccessful
		And I have past due amount
		Then the account should be dunned
		And  unpaid invoice item status should displays "Payment Due"


		Examples:
		| user 	      		| subscription 	       |
		| new CA user 		| Service Subscription |
		| new CA user 		| Storage Subscription |
		| new US user 		| Service Subscription |
		| new US user 		| Storage Subscription |
		| existing CA user 	| Service Subscription |
		| existing CA user 	| Storage Subscription |
		| existing US user 	| Service Subscription |
		| existing US user 	| Storage Subscription |
