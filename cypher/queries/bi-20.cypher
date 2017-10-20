// Q20. High-level topics
// :param tagClasses
MATCH (tagClass:TagClass)<-[:isSubclassOf*0..]-(:TagClass)<-[:hasType]-(tag:Tag)<-[:hasTag]-(message:Message)
RETURN
  tagClass.name,
  count(message) AS postCount
ORDER BY
  postCount DESC,
  tagClass.name ASC
LIMIT 100