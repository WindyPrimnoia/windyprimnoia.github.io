---
title: Chirpy Starter How To
author: windyp
description: undocumented tutorial to install chirpy starter
date: 2025-07-20 16:10:00 +0700
categories: [Blogging, General]
tags: [writing]
render_with_liquid: false
---

# Finally, after 4 hours of debugging, I can install this theme. 

if you are trying to use chirpy, after you did the [_Option 1. Using the Starter (Recommended)_](https://chirpy.cotes.page/posts/getting-started/#option-1-using-the-starter-recommended), go to 
`.github/workflows/pages-deploy.yml`{: .filepath}. and edit this line
```yml
jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v4
        with:
          fetch-depth: 0
          # submodules: true # < -- UNCOMMENT THIS LINE HERE
          # If using the 'assets' git submodule from Chirpy Starter, uncomment above
          # (See: https://github.com/cotes2020/chirpy-starter/tree/main/assets)
```

I'm freaking frustrated for trying to find out why my github action cicd keep failing because the file were not found and this was the reason. 

I almost never touch frontend and very confused. This took too much time to debug.
