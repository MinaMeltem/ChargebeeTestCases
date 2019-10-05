# Comments and Feedback

1. When structuring folders for feature files, I recommend the following order/heirarchy.
   1. `features` > `dunning`
      1. This way if there are more feature-folders to house feature-files, they can all fall under the greater `features` directory,
2. Name files using underscore `_`, keep camelCase for methods and modules, same goes with directories
3. Name the feature file and feature after an action. 
   1. ` Credit Card Attempts` => `Attempt to charge credit cards for dunned users`
4. Gramatically:
   1. `And I have dunning <user> account` => `And I have a dunned <user>`
   2. In examples: `CA new user` => `new CA user`
   3. In examples: to save you time i removed the clean padding in the table, not needed for the syntax, maybe a nice to have but I wouldnt focus on the `|` margins
   4. For examples, I added `new US user`, `existing US user` and `existing CA user`
5. Completely refrain from using pronouns and gender pronouns, like `he` and `she`
   1. `And I see customer has <subcriptions> in his account` => `And the user has a <subscription>`
6. Your initial examples table has mismatch on id's `subscription` vs `unpaid`
7. For the `Credit Card Attempts` => `Attempt to charge credit cards for dunned users` feature:
   1. I changed the `When` action to the next step, which is a new step `When the customer is dunned`
   2. `When first attempt of transaction is unsuccessful in customer account` => `And the first attempt to collect payment was unsuccessful`
   3. `And I should see credit card attemps are happening in the system in different days during dunning period` =>  `And I should see attempts to collect payment during the dunning period`
   4. Watch out for unneeded spaces and new lines
8. In `Dunning Emails`, you list a variable that has no examples `And I have unpaid <addon item> in my account`
   1. I would like to be specific when using the words, `service, system, and environment`  or most other terms
9. In alot of these features there were errors from copy and pasting it seems, I would just double or triple check commits.
10. Most of these stories were business roles  `As a business...`
    1. So the features should also read from that perspective
    2. And the user in the scenarios are `billing agent` or `finance agent`
11. Examples are probaly the most important part of a test. So lets stick to making sure we list all of them witj consistent headers and usage in the scenario. For instance, there were a couple of `| Addon Item |` that wasnt referenced in the test.