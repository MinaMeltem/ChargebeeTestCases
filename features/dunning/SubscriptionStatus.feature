
Feature: After dunning period ends, status of the subscriptions reamins active

	Scenario Outline: Storage/service Subscription stays active when the account dunned
		Given I am a billing agent
		And I have dunned <user> account with <subscriptions> 
		When the dunning period ends 
		Then invoice status becomes "Not Paid"
		And the subscription remains an active

		Examples:
		| user | subscription |
		| new CA user | Service Subscription |
		| new CA user | Storage Subscription |
		| new US user | Service Subscription |
		| new US user | Storage Subscription |
		| existing CA user | Service Subscription |
		| existing CA user | Storage Subscription |
		| existing US user | Service Subscription |
		| existing US user | Storage Subscription |
