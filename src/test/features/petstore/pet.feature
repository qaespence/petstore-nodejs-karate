Feature: Pet Store API Tests

Background:
    * url baseUrl

Scenario: Find pet by status
    Given path 'pet/findByStatus'
    And param status = 'available'
    When method GET
    Then status 200
    And match response[*].status contains 'available'

Scenario: Add a new pet
    Given path 'pet'
    And request { id: 12345, name: 'Doggie', status: 'available' }
    When method POST
    Then status 200
    And match response.name == 'Doggie'
    And match response.status == 'available'

Scenario: Update pet's status
    Given path 'pet'
    And request { id: 12345, name: 'Doggie', status: 'sold' }
    When method PUT
    Then status 200
    And match response.status == 'sold'

Scenario: Delete a pet
    Given path 'pet/12345'
    When method DELETE
    Then status 200
    And match response.message == '12345'
