# Branching Strategy

## 1. Main Branch
- The `main` branch holds the production-ready code. 
- All changes to the `main` branch should be merged via pull requests after successful code reviews.

## 2. Feature Branches
- New features and changes should be made in separate **feature branches**.
- Feature branches should be created from the `main` branch.
- Naming convention for feature branches: `feature/<feature-name>`.

## 3. Pull Requests (PRs)
- All changes made in feature branches should be submitted via a pull request to the `main` branch.
- Code reviews will be conducted in the pull request, and approvals will be required before merging.

## 4. Merging
- Once a pull request is approved, it should be merged into the `main` branch using the **Squash and Merge** or **Merge Commit** strategy, based on the team's preference.

## 5. Deleting Feature Branches
- After merging a pull request, the feature branch should be deleted both locally and remotely to maintain a clean repository.

## 6. Code Reviews
- Every pull request should go through a code review process before it is merged into `main`.
- Reviewers will provide feedback, and developers will address the requested changes.

