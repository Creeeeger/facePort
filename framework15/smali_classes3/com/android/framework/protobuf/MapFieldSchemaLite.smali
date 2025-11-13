.class Lcom/android/framework/protobuf/MapFieldSchemaLite;
.super Ljava/lang/Object;
.source "MapFieldSchemaLite.java"

# interfaces
.implements Lcom/android/framework/protobuf/MapFieldSchema;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getSerializedSizeLite(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MapFieldLite;

    move-object v1, p2

    check-cast v1, Lcom/android/framework/protobuf/MapEntryLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, p0, v5, v6}, Lcom/android/framework/protobuf/MapEntryLite;->computeMessageSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static blacklist mergeFromLite(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/framework/protobuf/MapFieldLite;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/MapFieldLite;

    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/MapFieldLite;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/MapFieldLite;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->isMutable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->mutableCopy()Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/MapFieldLite;->mergeFrom(Lcom/android/framework/protobuf/MapFieldLite;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public blacklist forMapData(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MapFieldLite;

    return-object v0
.end method

.method public blacklist forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "**>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MapEntryLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapEntryLite;->getMetadata()Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public blacklist forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MapFieldLite;

    return-object v0
.end method

.method public blacklist getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/MapFieldSchemaLite;->getSerializedSizeLite(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isImmutable(Ljava/lang/Object;)Z
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/MapFieldSchemaLite;->mergeFromLite(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newMapField(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/framework/protobuf/MapFieldLite;->emptyMapField()Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->mutableCopy()Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->makeImmutable()V

    return-object p1
.end method
