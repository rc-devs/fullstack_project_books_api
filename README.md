# Full Stack Books App: Rails + Angular

## Overview

This repository contains a series of exercises designed to help you build a full stack Books application using Ruby on Rails (API) and Angular. You will create one project and continue adding features to it each week. Each part focuses on a different aspect of full stack development, from basic CRUD to authentication, user associations, and serialization.

## Setup

1. Clone this repository:

    ```bash
    git clone <your-repo-url>
    cd <your-repo-name>
    ```

2. Install dependencies and set up your environment.

## Exercise Structure

Each part consists of:

-   Requirements in `exercises.md` (split by week/part)
-   Your Rails API code in the `books_api` directory (or as instructed)
-   Your Angular code in the `books_client` directory (or as instructed)

## How to Work on Exercises

1. **Read the Requirements**
    - Start by reading the requirements for the current part in `exercises.md`
    - Understand what each feature or implementation should do

2. **Write Your Solution**
    - Implement the required features in your Rails and Angular apps
    - Follow best practices:
        - Use clear formatting and comments
        - Keep code focused and single-purpose

3. **Test Your Solution**
    - Use RSpec for Rails, and run your Angular app to test endpoints and UI
    - Use Postman or curl to test your API endpoints
    - Verify the output matches the expected results in the exercise description

4. **Saving Your Work**
    - Add, commit, and push your changes to GitHub after each week's work
    - Each week builds on the previous week's code
    - Do not start over each week - continue building on your existing project

## Common Issues and Solutions

1. **Rails Errors**
    - Check your Gemfile and run `bundle install`
    - Ensure migrations are run (`rails db:migrate`)
    - Verify strong parameters in controllers

2. **Angular Errors**
    - Ensure all modules are imported (e.g., `HttpClientModule`)
    - Check API URLs and CORS settings
    - Use the browser console for error messages

3. **Authentication Issues**
    - Double-check JWT setup and token handling
    - Ensure tokens are sent in the `Authorization` header

4. **Test Failures**
    - Read the error message carefully
    - Check your test setup and data

## Submitting Your Work

1. **Before Submitting**
    - Run all tests and verify endpoints with Postman or curl
    - Check your code style

2. **Share Your Repository**
    - Provide your Code Coach with a link to your GitHub repository

3. **Create a Pull Request**

    ```bash
    git add .
    git commit -m "Complete Books App Part 1"
    git checkout -b part-1
    git push origin part-1
    ```

    Then create a PR on GitHub with:
    - A clear title
    - Description of changes
    - Any notes for the instructor
    **Leave the PR open for your Code Coach to review - do not merge**

4. **PR Requirements**
    - All features must work as described
    - Code must be properly formatted
    - Features must match the requirements
    - Clear commit messages

## Getting Help

- Review the reading and lecture material
- Use the [Codelabs Learning Assistant](https://chat.openai.com/g/g-68484cbcb348819181c3f4137b0b7c49-codelabs-learning-assistant)
- Use the official Rails Guides: https://guides.rubyonrails.org/
- Use the official Angular Docs: https://angular.io/docs
- Ask for help in class

## Grading Criteria

Your work will be evaluated on:

1. Correctness (all features work as described)
2. Code quality and style
3. Error handling
4. Documentation and comments

## Tips for Success

1. Start with the basic requirements
2. Add edge cases gradually
3. Test frequently
4. Keep your code clean and readable
5. Ask questions when stuck

Remember: The goal is to learn full stack fundamentals while writing clean, maintainable code. Take your time, test thoroughly, and don't hesitate to ask for help!
