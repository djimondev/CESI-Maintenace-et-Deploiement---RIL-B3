describe('fake test on toolib local', () => {
  beforeEach(() => {
    cy.visit('http://localhost:8080/fr/logements')
  })

  it('should have 67 items', () => {
    cy.get('[data-test=accommodation-card]')
      .should('have.length', 16)
  })
})
