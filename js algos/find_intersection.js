function findIntersection(strArr) {
  const lists = strArr.map((e) => e.split(", "));
  const first = lists[0];
  const second = lists[1];

  const map = {};
  const results = [];

  first.forEach((e) => (map[e] = true));
  second.forEach((e) => {
    if (map[e]) {
      results.push(e);
    }
  });
  if (results.length > 0) {
    return results;
  }
  return false;
}

console.log(findIntersection(["1, 4, 7, 8, 12, 16", "4, 5, 12, 16"]));
