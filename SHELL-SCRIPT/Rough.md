set -x # debug mode
set -e # exit the script when there is an error
set -o pipefail


PAT(personal access token) 


## git remote set-url origin https://<PAT>@github.com/<username>/<repository>.git


## How to Create a Personal Access Token (PAT) on GitHub

1. **Log in to GitHub:**
   - Navigate to [GitHub](https://github.com/) and log in to your account.

2. **Access Personal Access Tokens Settings:**
   - Click on your profile icon in the top-right corner of GitHub.
   - From the dropdown menu, select **Settings**.

3. **Navigate to Developer Settings:**
   - In the left sidebar of the Settings page, scroll down and click on **Developer settings**.

4. **Create a New Personal Access Token:**
   - In the Developer settings menu, click on **Personal access tokens**.

5. **Generate New Token:**
   - Click on **Generate new token** (You may need to enter your GitHub password to proceed).

6. **Configure Token Settings:**
   - Enter a meaningful note in the **Note** field to remind you of the token's purpose (e.g., "Git operations for Shell Script repo").
   - Select the scopes, or permissions, you need for this token. For Git operations, the minimal scope required is generally `repo` (to access repositories). If you need additional permissions, select them accordingly.

7. **Generate Token:**
   - Click on **Generate token** at the bottom of the page.

8. **Copy and Save the Token:**
   - Once generated, GitHub will display your new PAT. **Important:** This token is only displayed once, so copy it to a secure location immediately.

9. **Usage Notes:**
   - Treat your PAT like a password. Do not share it publicly or expose it in code repositories.
   - Revoke tokens you no longer need to maintain security.

