# SDK Testing

> **TESTING DOCUMENT** - How to test the project SDK using multiple languages and the command line. References `techContext.md` for environment configuration and `progress.md` for test status.

## Overview

These examples demonstrate how to test the SDK once a secret token is provided by the team. Until the token is available, tests may fail.

**Required Environment Variable:** `[TO BE DEFINED - TOKEN NAME]`

## TypeScript Example

```ts
import { MySDK } from '[TO BE DEFINED - sdk package]';

const sdk = new MySDK(process.env['[TO BE DEFINED - TOKEN NAME]']);

sdk.testConnection()
  .then(result => console.log(result))
  .catch(err => console.error(err));
```

Run with:

```bash
npx ts-node examples/test-sdk.ts
```

## Python Example

```python
import os
from [TO_BE_DEFINED_sdk_package] import Client

client = Client(api_key=os.environ['[TO BE DEFINED - TOKEN NAME]'])
print(client.test_connection())
```

Run with:

```bash
python examples/test_sdk.py
```

## CLI Example

```bash
[TO BE DEFINED - SDK CLI] --token "$[TO BE DEFINED - TOKEN NAME]" test-connection
```

Replace placeholders with actual command once the SDK CLI is available.

---

## Instructions for AI Agents

- **When this file is incomplete:**
  1. Confirm the correct environment variable name for the token.
  2. Update package names and example commands with real values.
  3. Ensure examples align with techContext.md environment setup.

- **Update triggers:**
  - New SDK features or CLI options.
  - Changes to authentication or token management.
  - Additional language examples needed.

- **Cross-references:**
  - `techContext.md` (environment variables and dependencies)
  - `activeContext.md` (current testing focus)
  - `progress.md` (testing progress tracking)
