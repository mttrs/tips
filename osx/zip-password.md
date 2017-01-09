# Password Protect Zip Files in Mac OS X

```bash
# Create a file
% mkdir hello

# Create a file
% touch hello/xxx

# Pattern 1(shortest)
% zip -er hello.zip hello
Enter password:
Verify password:
  adding: hello/ (stored 0%)
  adding: hello/xxx (stored 0%)

# Pattern 2
# zip
% zip -r hello.zip hello

# Set a password
% zipcloak hello.zip
Enter password:
Verify password:
encrypting: hello/
encrypting: hello/xxx

% open hello.zip
```
