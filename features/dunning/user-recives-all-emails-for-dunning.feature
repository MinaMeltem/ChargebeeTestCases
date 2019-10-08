
Feature: User receives all emails for dunning
	Scenario Outline: Email user on cadence if dunned
		Given I am a <user>
		And I have a <subcription>
		And I have unpaid <addon> in my account
		And I have an invalid payment method in the chargebee system
		When my account is dunned
		And my the status of unpaid item displays "Payment Due"
		Then I should receive "Transaction Attempt Failed" notification emails in <specified resend days>
		And after dunning period ends (17 days)
		Then invoice status should change to "Not Paid"
		And I should receive notification email.




		Examples:
		| user 		| subscription 		| addon 	         | specified resend days  |

		| New CA user	| Service Subscription 	| Appointment Fee        |     0		 |
		| New CA user 	| Storage Subscription 	| Monthly storage payment|     0  	         |
		| New CA user	| Service Subscription 	| Appointment Fee        |     1		 |
		| New CA user 	| Storage Subscription 	| Monthly storage payment|     1  	         |
		| New CA user	| Service Subscription 	| Appointment Fee        |     4		 |
		| New CA user 	| Storage Subscription 	| Monthly storage payment|     4  	         |
		| New CA user	| Service Subscription 	| Appointment Fee        |     8		 |
		| New CA user 	| Storage Subscription 	| Monthly storage payment|     8  	         |
		| New CA user	| Service Subscription 	| Appointment Fee        |     17		 |
		| New CA user 	| Storage Subscription 	| Monthly storage payment|     17  	         |

		| New US user	| Service Subscription 	| Appointment Fee        |     0		 |
		| New US user 	| Storage Subscription 	| Monthly storage payment|     0  	         |
		| New US user	| Service Subscription 	| Appointment Fee        |     1		 |
		| New US user 	| Storage Subscription 	| Monthly storage payment|     1  	         |
		| New US user	| Service Subscription 	| Appointment Fee        |     4		 |
		| New US user 	| Storage Subscription 	| Monthly storage payment|     4  	         |
		| New US user	| Service Subscription 	| Appointment Fee        |     8		 |
		| New US user 	| Storage Subscription 	| Monthly storage payment|     8  	         |
		| New US user	| Service Subscription 	| Appointment Fee        |     17		 |
		| New US user 	| Storage Subscription 	| Monthly storage payment|     17  	         |

		| Ext. CA user	| Service Subscription 	| Appointment Fee        |     0		 |
		| Ext. CA user 	| Storage Subscription 	| Monthly storage payment|     0  	         |
		| Ext. CA user	| Service Subscription 	| Appointment Fee        |     1		 |
		| Ext. CA user 	| Storage Subscription 	| Monthly storage payment|     1  	         |
		| Ext. CA user	| Service Subscription 	| Appointment Fee        |     4		 |
		| Ext. CA user 	| Storage Subscription 	| Monthly storage payment|     4  	         |
		| Ext. CA user	| Service Subscription 	| Appointment Fee        |     8		 |
		| Ext. CA user 	| Storage Subscription 	| Monthly storage payment|     8  	         |
		| Ext. CA user	| Service Subscription 	| Appointment Fee        |     17		 |
		| Ext. CA user 	| Storage Subscription 	| Monthly storage payment|     17  	         |

		| Ext. US user	| Service Subscription 	| Appointment Fee        |     0		 |
		| Ext. US user 	| Storage Subscription 	| Monthly storage payment|     0  	         |
		| Ext. US user	| Service Subscription 	| Appointment Fee        |     1		 |
		| Ext. US user 	| Storage Subscription 	| Monthly storage payment|     1  	         |
		| Ext. US user	| Service Subscription 	| Appointment Fee        |     4		 |
		| Ext. US user 	| Storage Subscription 	| Monthly storage payment|     4  	         |
		| Ext. US user	| Service Subscription 	| Appointment Fee        |     8		 |
		| Ext. US user 	| Storage Subscription 	| Monthly storage payment|     8  	         |
		| Ext. US user	| Service Subscription 	| Appointment Fee        |     17		 |
		| Ext. US user 	| Storage Subscription 	| Monthly storage payment|     17  	         |