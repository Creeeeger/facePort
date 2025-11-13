.class Lcom/google/common/collect/CompactHashMap;
.super Ljava/util/AbstractMap;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final NOT_FOUND:Ljava/lang/Object;


# instance fields
.field public transient entries:[I

.field public transient entrySetView:Lcom/google/common/collect/CompactHashMap$KeySetView;

.field public transient keySetView:Lcom/google/common/collect/CompactHashMap$KeySetView;

.field public transient keys:[Ljava/lang/Object;

.field public transient metadata:I

.field public transient size:I

.field public transient table:Ljava/lang/Object;

.field public transient values:[Ljava/lang/Object;

.field public transient valuesView:Lcom/google/common/collect/CompactHashMap$ValuesView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-void
.end method

.method public static createWithExpectedSize()Lcom/google/common/collect/CompactHashMap;
    .locals 3

    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0}, Ljava/util/AbstractMap;-><init>()V

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->constrainToRange(II)I

    move-result v1

    iput v1, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_2

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->constrainToRange(II)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/CompactHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected size must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Invalid size: "

    invoke-static {v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CompactHashMap$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/CompactHashMap$1;-><init>(Lcom/google/common/collect/CompactHashMap;I)V

    move-object p0, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->constrainToRange(II)I

    move-result v3

    iput v3, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    iput v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v2, v0, [B

    if-eqz v2, :cond_2

    check-cast v0, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    :cond_2
    instance-of v2, v0, [S

    if-eqz v2, :cond_3

    check-cast v0, [S

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_0

    :cond_3
    check-cast v0, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    iget v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    iput v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    :goto_1
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final delegateOrNull()Ljava/util/Map;
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Lcom/google/common/collect/CompactHashMap$KeySetView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/CompactHashMap$KeySetView;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/CompactHashMap$KeySetView;-><init>(Lcom/google/common/collect/CompactHashMap;I)V

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Lcom/google/common/collect/CompactHashMap$KeySetView;

    :cond_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final hashTableMask()I
    .locals 1

    iget p0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    and-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x1

    shl-int p0, v0, p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 7

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    and-int v4, v0, v2

    invoke-static {v4, v3}, Lcom/google/common/collect/CompactHashing;->tableGet(ILjava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    not-int v4, v2

    and-int/2addr v0, v4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v5

    aget v5, v5, v3

    and-int v6, v5, v4

    if-ne v6, v0, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-static {p1, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v3

    :cond_3
    and-int v3, v5, v2

    if-nez v3, :cond_2

    return v1
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Lcom/google/common/collect/CompactHashMap$KeySetView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/CompactHashMap$KeySetView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/CompactHashMap$KeySetView;-><init>(Lcom/google/common/collect/CompactHashMap;I)V

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Lcom/google/common/collect/CompactHashMap$KeySetView;

    :cond_0
    return-object v0
.end method

.method public final moveLastEntry(II)V
    .locals 9

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result p0

    add-int/lit8 v4, p0, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ge p1, v4, :cond_2

    aget-object v7, v2, v4

    aput-object v7, v2, p1

    aget-object v8, v3, v4

    aput-object v8, v3, p1

    aput-object v6, v2, v4

    aput-object v6, v3, v4

    aget v2, v1, v4

    aput v2, v1, p1

    aput v5, v1, v4

    invoke-static {v7}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, p2

    invoke-static {v2, v0}, Lcom/google/common/collect/CompactHashing;->tableGet(ILjava/lang/Object;)I

    move-result v3

    if-ne v3, p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-static {v2, p1, v0}, Lcom/google/common/collect/CompactHashing;->tableSet(IILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    aget v0, v1, v3

    and-int v2, v0, p2

    if-ne v2, p0, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result p0

    aput p0, v1, v3

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    aput-object v6, v2, p1

    aput-object v6, v3, p1

    aput v5, v1, p1

    :goto_1
    return-void
.end method

.method public final needsAllocArrays()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v3

    const-string v5, "Arrays already allocated"

    invoke-static {v5, v3}, Lcom/google/common/base/Preconditions;->checkState(Ljava/lang/Object;Z)V

    iget v3, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Lcom/google/common/collect/Hashing;->closedTableSize(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Lcom/google/common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x20

    iget v6, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    const/16 v7, 0x1f

    invoke-static {v6, v5, v7}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v5

    iput v5, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    new-array v5, v3, [I

    iput-object v5, v0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    new-array v5, v3, [Ljava/lang/Object;

    iput-object v5, v0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v6

    iget v7, v0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 v8, v7, 0x1

    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v10

    and-int v11, v9, v10

    iget-object v12, v0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/google/common/collect/CompactHashing;->tableGet(ILjava/lang/Object;)I

    move-result v12

    if-nez v12, :cond_3

    if-le v8, v10, :cond_2

    invoke-static {v10}, Lcom/google/common/collect/CompactHashing;->newCapacity(I)I

    move-result v3

    invoke-virtual {v0, v10, v3, v9, v7}, Lcom/google/common/collect/CompactHashMap;->resizeTable(IIII)I

    move-result v10

    goto/16 :goto_2

    :cond_2
    iget-object v3, v0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11, v8, v3}, Lcom/google/common/collect/CompactHashing;->tableSet(IILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    not-int v11, v10

    and-int v15, v9, v11

    const/16 v16, 0x0

    :goto_0
    sub-int/2addr v12, v4

    aget v13, v3, v12

    and-int v14, v13, v11

    if-ne v14, v15, :cond_4

    aget-object v14, v5, v12

    invoke-static {v1, v14}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    aget-object v0, v6, v12

    aput-object v2, v6, v12

    return-object v0

    :cond_4
    and-int v14, v13, v10

    move-object/from16 v17, v5

    add-int/lit8 v5, v16, 0x1

    if-nez v14, :cond_b

    const/16 v6, 0x9

    if-lt v5, v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v3

    add-int/2addr v3, v4

    new-instance v4, Ljava/util/LinkedHashMap;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->isEmpty()Z

    move-result v3

    const/4 v5, -0x1

    if-eqz v3, :cond_6

    :cond_5
    move v13, v5

    goto :goto_1

    :cond_6
    const/4 v13, 0x0

    :goto_1
    if-ltz v13, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v13

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    iget v3, v0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v13, v3, :cond_5

    goto :goto_1

    :cond_7
    iput-object v4, v0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    iput-object v3, v0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    iget v3, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    add-int/lit8 v3, v3, 0x20

    iput v3, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    if-le v8, v10, :cond_9

    invoke-static {v10}, Lcom/google/common/collect/CompactHashing;->newCapacity(I)I

    move-result v3

    invoke-virtual {v0, v10, v3, v9, v7}, Lcom/google/common/collect/CompactHashMap;->resizeTable(IIII)I

    move-result v10

    goto :goto_2

    :cond_9
    invoke-static {v13, v8, v10}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v5

    aput v5, v3, v12

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v3

    array-length v3, v3

    if-le v8, v3, :cond_a

    ushr-int/lit8 v5, v3, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    or-int/2addr v4, v5

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eq v4, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    :cond_a
    const/4 v12, 0x0

    invoke-static {v9, v12, v10}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v4

    aput v3, v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v3

    aput-object v1, v3, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v1

    aput-object v2, v1, v7

    iput v8, v0, Lcom/google/common/collect/CompactHashMap;->size:I

    iget v1, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    add-int/lit8 v1, v1, 0x20

    iput v1, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    const/4 v13, 0x0

    return-object v13

    :cond_b
    move/from16 v16, v5

    move v12, v14

    move-object/from16 v5, v17

    goto/16 :goto_0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->removeHelper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public final removeHelper(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    sget-object v1, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    move v4, v0

    invoke-static/range {v2 .. v8}, Lcom/google/common/collect/CompactHashing;->remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(II)V

    iget p1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    iget p1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    add-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    return-object v1
.end method

.method public final requireEntries()[I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public final requireKeys()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public final requireValues()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public final resizeTable(IIII)I
    .locals 8

    invoke-static {p2}, Lcom/google/common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_0

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    invoke-static {p3, p4, v0}, Lcom/google/common/collect/CompactHashing;->tableSet(IILjava/lang/Object;)V

    :cond_0
    iget-object p3, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object p4

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_2

    invoke-static {v1, p3}, Lcom/google/common/collect/CompactHashing;->tableGet(ILjava/lang/Object;)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    aget v4, p4, v3

    not-int v5, p1

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    and-int v6, v5, p2

    invoke-static {v6, v0}, Lcom/google/common/collect/CompactHashing;->tableGet(ILjava/lang/Object;)I

    move-result v7

    invoke-static {v6, v2, v0}, Lcom/google/common/collect/CompactHashing;->tableSet(IILjava/lang/Object;)V

    invoke-static {v5, v7, p2}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v2

    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    iget p3, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    const/16 p4, 0x1f

    invoke-static {p3, p1, p4}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    return p2
.end method

.method public final size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    :goto_0
    return p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Lcom/google/common/collect/CompactHashMap$ValuesView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/CompactHashMap$ValuesView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$ValuesView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Lcom/google/common/collect/CompactHashMap$ValuesView;

    :cond_0
    return-object v0
.end method
