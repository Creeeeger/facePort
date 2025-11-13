.class public final Lcom/google/protobuf/MapFieldSchemaLite;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/google/protobuf/MapFieldLite;

    check-cast p2, Lcom/google/protobuf/MapEntryLite;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->computeTagSize(I)I

    move-result v3

    iget-object v4, p2, Lcom/google/protobuf/MapEntryLite;->metadata:Lcom/google/protobuf/MapEntryLite$Metadata;

    invoke-static {v4, v2, v0}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0, v0, v3, v1}, Lcom/google/protobuf/MapFieldSchemaLite$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;
    .locals 1

    check-cast p0, Lcom/google/protobuf/MapFieldLite;

    check-cast p1, Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->ensureMutable()V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/MapFieldLite;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object p0
.end method
