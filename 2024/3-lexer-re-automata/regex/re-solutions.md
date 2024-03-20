# Solutions

- color: `[0-9a-fA-F]{6}`
- date: `\d{1,2}[-\/]\d{1,2}[-\/]\d{2,4}`
- more than 100 dollars: `\$\d{3,}\.\d{2}`
- cat: `\bcat\b`
- binary-3
- html-head: `<[hH]([1-6])>.*?<\/[hH]\1>`
- html-head-lookaround: `(?<=<[hH]([1-6])>).*?(?=<\/[hH]\1>)`
- html-a-img: `(<a[^>]+>)?<img[^>]+>(?(1)<\/a>)`