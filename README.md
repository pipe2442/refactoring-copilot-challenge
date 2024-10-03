# AI Challenge - Refactoring

## Welcome! 👋

This challenge is brought to you by the Endava AI Champions.

**To successfully complete this challenge, you'll need a solid understanding of HTTP, REST APIs, and access to a business license for GitHub Copilot.**

## Goal and constrains

The goal of this challenge is to demonstrate how GitHub Copilot can assist in managing and refactoring boilerplate code by incrementally increasing the complexity of a state machine implementation. This exercise will showcase how Copilot can streamline the development process, reduce redundancy in code, and help with the creation of automated tests. The constraints of this challenge require participants to avoid using web searches or official documentation as their first resources, instead relying on Copilot to provide insights and solutions. This approach aims to demonstrate how Copilot can serve as a valuable tool in refactoring code.

> Important: Upload your progress periodically. Regularly committing and pushing your changes to your branch will ensure that your work is backed up and accessible. This practice also allows for easier collaboration and support during the challenge.

## The challenge

Your challenge is to design and implement a state machine from scratch in the programming language you are most comfortable with. You'll start with a straightforward requirement, but as you progress, additional instructions will introduce complexity, simulating a real-world scenario where boilerplate code can accumulate.

Want some support on the challenge? Go to Microsoft Teams and ask questions in the **GitHub Copilot Dev Academy 2024** group.

## Where to find everything

No additional resources are needed to complete the challenge.

## What are you going to practice?
- State Machine Design: Develop a solid understanding of how to architect and implement state machines, which are fundamental in many programming scenarios.
- Incremental Refactoring: Learn how to refactor code iteratively, improving design and performance without compromising existing functionality.
- Problem-Solving with GitHub Copilot: Enhance your problem-solving abilities by leveraging GitHub Copilot as you work through the challenge's evolving requirements and constraints. Explore how AI-powered coding assistance can help you write code more efficiently and handle complex scenarios.

## Building the Challenge - Instructions

Before You Begin:

1. Download the Repository: Start by downloading the current repository to your local machine.
2. Create a Branch: Create a new branch using your name as the pattern: {your-name} (e.g., edward-montoya).
3. Verify GitHub Copilot Configuration: Ensure that GitHub Copilot for Enterprise is properly configured in Visual Studio Code.
4. Set Up Your Repository: Configure your repository so that your code is published to your branch. This setup will also be beneficial if you need assistance during the challenge, as you can share the URL for your project/branch with your repository URL. There are various methods to achieve this.

Suggested Process:

1. Initial Implementation
- Implement a basic state machine with three states: Idle, Processing, and Completed. 
- Define transitions between these states triggered by events: start_processing and complete_processing. 
- Use GitHub Copilot to help with the initial setup and basic state machine logic.
- Write basic automated tests to ensure the state machine transitions correctly between these states.
2. Adding States and Transitions
- Add two more states: Error and Paused. 
- Introduce new events: pause, resume, and error_occurred. 
- Update the state machine to handle these new states and transitions.
- Use Copilot to assist in expanding the state machine logic.
- Update the automated tests to cover the new states and transitions, ensuring comprehensive test coverage.
3. Introducing Guards and Actions
- Implement guards to control transitions based on specific conditions (e.g., only transition to Completed if certain criteria are met).
- Add actions that should be executed during state transitions (e.g., logging, updating counters).
- Use Copilot to suggest ways to implement guards and actions efficiently.
- Write tests to verify that guards and actions are correctly implemented and that they behave as expected under different scenarios.
4. Dynamic States and Transitions
- Allow for dynamic addition of states and transitions at runtime.
- Ensure that the state machine can handle a flexible number of states and transitions, and use Copilot to help manage the increasing complexity.
- Implement tests to ensure that dynamically added states and transitions work correctly and that the state machine maintains integrity.
5. Refactoring for Maintainability
- Refactor the state machine implementation to reduce redundancy and improve maintainability.
- Use Copilot to identify and implement refactoring opportunities, such as extracting common logic into reusable functions or classes.
- Ensure that all tests pass after the refactoring, and add additional tests if needed to cover any new code paths introduced by the refactoring.

## Expected Artifacts

The final deliverable for this challenge should be a Pull Request (PR) submitted to the repository. This PR should include all the code and resources completed during the challenge. It will serve as the primary artifact for reviewing and assessing your work.

> The PR must also include your insights on using GitHub Copilot during the exercise, following the schema below:


```
## Pull Request Title

## Description
- **Technology Used:** Describe the tools, frameworks, or languages you utilized.
- **What I Learned:** Summarize key takeaways or skills acquired during the challenge.
- **Useful Resources:** List any references, articles, or documentation that were helpful.

## Testing
- **Testing Approach:** Outline the strategy used for testing the challenge.
- **Test Methods:** Include details on any unit tests, integration tests, or manual testing performed.

## Visual Evidence
- **GitHub Copilot Interactions:** Attach relevant screenshots, screen recordings, or GIFs that highlight valuable interactions with GitHub Copilot.

## Checklist
- [ ] I have reviewed my code to ensure it meets coding standards.
- [ ] I have verified that my code adheres to security best practices.
- [ ] I have ensured my code follows best practices.
- [ ] I have added or updated tests as needed.
- [ ] I have documented relevant GitHub Copilot scenarios (if applicable).
- [ ] The challenge is fully completed.

## Additional Comments
- **Further Insights:** Provide any additional information or notes, such as potential risks, edge cases, or alternative approaches considered.
```

## Got feedback for us?

We love receiving feedback! We're always looking to improve our process. So if you have anything you'd like to mention, please email us.

**Have fun building!** 🚀
