
# API Interaction Summary

**Name:** Deepak Kumar  
**Roll Number:** 2601730444  
**University:** KR Mangalam University  
**Batch:** 2026–2030  

## 1. What is a REST API?

A REST API (Representational State Transfer Application Programming Interface) allows different software applications to communicate with each other over the internet using HTTP methods. It enables applications to request, send, update, and delete data through standard URLs and HTTP requests.

## 2. HTTP Status Codes

### HTTP 200 – OK

The HTTP 200 status code means that the request was successful and the server returned the requested information.

### HTTP 404 – Not Found

The HTTP 404 status code means that the requested resource or URL could not be found on the server.

## 3. GitHub API Interaction

I used the GitHub REST API to fetch my public GitHub profile information.

**API URL:**
https://api.github.com/users/Deepak27kumar

**Command used:**

```bash
curl -fL https://api.github.com/users/Deepak27kumar -o API/github_profile.json
```

### Fields extracted using jq

```bash
cat API/github_profile.json | jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'
```

Explanation:

- `name:.name` – Extracts the GitHub user's name.
- `repos:.public_repos` – Extracts the total number of public repositories.
- `followers:.followers` – Extracts the number of followers.
- `joined:.created_at` – Extracts the account creation date.

## 4. JSONPlaceholder API Interaction

I used JSONPlaceholder, a free online REST API, to fetch sample post data.

**API URL:**
https://jsonplaceholder.typicode.com/posts

**Command used:**

```bash
curl -fL https://jsonplaceholder.typicode.com/posts -o API/sample_posts.json
```

To count the total number of posts, I used:

```bash
cat API/sample_posts.json | jq length
```

**Result:** 100 posts were successfully retrieved.

## 5. Conclusion

Through this practical assignment, I learned how to interact with REST APIs using curl, download JSON responses, and extract specific information using jq. I also understood the meaning of HTTP status codes 200 and 404.
