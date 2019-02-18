[when]There is an Applicant {x} with=${x} : Applicant()
[when]- age older than or equal to 18=age >= 18
[when]- age younger than 18=age < 18
[when]- who is a customer of the bank=existingCustomer == true
[when]- who is not a customer of the bank=existingCustomer == false
[then]The applicant {x} is "Unsuitable"=${x}.setDemographicAssessment( "Unsuitable" ); insert( new Rejection("Unsuitable"));
[then]The applicant {x} is "Suitable"=${x}.setDemographicAssessment( "Suitable" )
[then]Log this rule which has been fired=System.out.println("Rule fired: " + drools.getRule().getName());