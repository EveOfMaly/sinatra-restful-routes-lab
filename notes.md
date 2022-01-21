Recipe App
  Index page '/recipes'
    responds with a 200 status code (confirmed)
    displays a list of recipes  (confirmed)
    contains links to each recipe's show page (FAILED - 1)
  show page '/recipes/:id'
    responds with a 200 status code (FAILED - 2)
    displays the recipe's name (FAILED - 3)
    displays the recipe's ingredients (FAI  LED - 4)
    displays the recipe's cook time (FAILED - 5)
    contains a form to delete the recipe (FAILED - 6)
    deletes via a DELETE request (FAILED - 7)
  edit page '/recipes/:id/edit'
    responds with a 200 status code (FAILED - 8)
    contains a form to edit the recipe (FAILED - 9)
    displays the recipe's ingredients before editing (FAILED - 10)
    submits via a patch request (FAILED - 11)
  new page '/recipes/new'
    responds with a 200 status code (FAILED - 12)
    contains a form to create the recipe (FAILED - 13)
    posts the form back to create a new recipe (FAILED - 14)
  creating a new recipe
    creates a new recipe and saves to the database (FAILED - 15)
    redirects to the recipe show page (FAILED - 16)
  updating a recipe
    updates the recipe (FAILED - 17)
    redirects to the recipe show page (FAILED - 18)
  deleting a recipe
    deletes a recipe (FAILED - 19)