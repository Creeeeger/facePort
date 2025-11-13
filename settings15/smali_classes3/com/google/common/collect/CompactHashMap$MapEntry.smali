.class public final Lcom/google/common/collect/CompactHashMap$MapEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final key:Ljava/lang/Object;

.field public lastKnownIndex:I

.field public final synthetic this$0:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/CompactHashMap;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    sget-object v0, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap$MapEntry;->updateLastKnownIndex()V

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, v0

    :goto_0
    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap$MapEntry;->updateLastKnownIndex()V

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->this$0:Lcom/google/common/collect/CompactHashMap;

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/CompactHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v1}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->this$0:Lcom/google/common/collect/CompactHashMap;

    iget p0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    invoke-virtual {v1}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v1

    aput-object p1, v1, p0

    return-object v0
.end method

.method public final updateLastKnownIndex()V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {v1}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->this$0:Lcom/google/common/collect/CompactHashMap;

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    invoke-virtual {v1}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->this$0:Lcom/google/common/collect/CompactHashMap;

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->key:Ljava/lang/Object;

    sget-object v2, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$MapEntry;->lastKnownIndex:I

    :cond_1
    return-void
.end method
