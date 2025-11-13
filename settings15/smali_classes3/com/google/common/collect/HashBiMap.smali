.class public final Lcom/google/common/collect/HashBiMap;
.super Ljava/util/AbstractMap;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$Inverse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/BiMap;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient entrySet:Lcom/google/common/collect/HashBiMap$KeySet;

.field public transient firstInInsertionOrder:I

.field public transient hashTableKToV:[I

.field public transient hashTableVToK:[I

.field public transient inverse:Lcom/google/common/collect/BiMap;

.field public transient keySet:Lcom/google/common/collect/HashBiMap$KeySet;

.field public transient keys:[Ljava/lang/Object;

.field public transient lastInInsertionOrder:I

.field public transient modCount:I

.field public transient nextInBucketKToV:[I

.field public transient nextInBucketVToK:[I

.field public transient nextInInsertionOrder:[I

.field public transient prevInInsertionOrder:[I

.field public transient size:I

.field public transient valueSet:Lcom/google/common/collect/HashBiMap$KeySet;

.field public transient values:[Ljava/lang/Object;


# direct methods
.method public static create()Lcom/google/common/collect/HashBiMap;
    .locals 1

    new-instance v0, Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0}, Ljava/util/AbstractMap;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/HashBiMap;->init()V

    return-object v0
.end method

.method public static createFilledWithAbsent(I)[I
    .locals 1

    new-array p0, p0, [I

    const/4 v0, -0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
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

    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->init()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    return-void
.end method


# virtual methods
.method public final bucket(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    and-int/2addr p0, p1

    return p0
.end method

.method public final clear()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iput v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(ILjava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(ILjava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final deleteFromTableKToV(II)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-virtual {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result p2

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v2, v1, p2

    if-ne v2, p1, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v2, p0, p1

    aput v2, v1, p2

    aput v0, p0, p1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget p2, p2, v2

    :goto_1
    move v3, v2

    move v2, p2

    move p2, v3

    if-eq v2, v0, :cond_3

    if-ne v2, p1, :cond_2

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v1, p0, p1

    aput v1, p0, p2

    aput v0, p0, p1

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget p2, p2, v2

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected to find entry with key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public final deleteFromTableVToK(II)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-virtual {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result p2

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v2, v1, p2

    if-ne v2, p1, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v2, p0, p1

    aput v2, v1, p2

    aput v0, p0, p1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget p2, p2, v2

    :goto_1
    move v3, v2

    move v2, p2

    move p2, v3

    if-eq v2, v0, :cond_3

    if-ne v2, p1, :cond_2

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v1, p0, p1

    aput v1, p0, p2

    aput v0, p0, p1

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget p2, p2, v2

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected to find entry with value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public final ensureCapacity(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    array-length v1, v0

    if-ge v1, p1, :cond_0

    array-length v0, v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    array-length v2, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    array-length v2, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    array-length v2, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    array-length v2, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    invoke-static {p1}, Lcom/google/common/collect/Hashing;->closedTableSize(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v3, v2, v0

    aput v3, v1, p1

    aput p1, v2, v0

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v3, v2, v0

    aput v3, v1, p1

    aput p1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->entrySet:Lcom/google/common/collect/HashBiMap$KeySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/HashBiMap$KeySet;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/HashBiMap$KeySet;-><init>(Lcom/google/common/collect/HashBiMap;I)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->entrySet:Lcom/google/common/collect/HashBiMap$KeySet;

    :cond_0
    return-object v0
.end method

.method public final findEntryByKey(ILjava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    aget-object p1, v2, p0

    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    aget p0, v1, p0

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_1
    return p0
.end method

.method public final findEntryByValue(ILjava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    aget-object p1, v2, p0

    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    aget p0, v1, p0

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_1
    return p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(ILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public final init()V
    .locals 3

    const-string v0, "expectedSize"

    const/16 v1, 0x10

    invoke-static {v1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->closedTableSize(I)I

    move-result v0

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->createFilledWithAbsent(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    return-void
.end method

.method public final insertIntoTableKToV(II)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-virtual {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v1, p0, p2

    aput v1, v0, p1

    aput p1, p0, p2

    return-void
.end method

.method public final insertIntoTableVToK(II)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-virtual {p0, p2}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v1, p0, p2

    aput v1, v0, p1

    aput p1, p0, p2

    return-void
.end method

.method public final inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$Inverse;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    :cond_0
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keySet:Lcom/google/common/collect/HashBiMap$KeySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/HashBiMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/HashBiMap$KeySet;-><init>(Lcom/google/common/collect/HashBiMap;I)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->keySet:Lcom/google/common/collect/HashBiMap$KeySet;

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(ILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object p1, p1, v1

    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->replaceValueInEntry(ILjava/lang/Object;)V

    move-object p2, p1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(ILjava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Value already present: %s"

    invoke-static {p2, v3, v2}, Lcom/google/common/base/Preconditions;->checkArgument(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/google/common/collect/HashBiMap;->ensureCapacity(I)V

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aput-object p2, p1, v3

    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/HashBiMap;->insertIntoTableKToV(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->insertIntoTableVToK(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method public final putInverse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(ILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object p1, p1, v1

    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->replaceKeyInEntry(ILjava/lang/Object;)V

    return-object p1

    :cond_1
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(ILjava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-string v4, "Key already present: %s"

    invoke-static {p2, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/2addr v2, v5

    invoke-virtual {p0, v2}, Lcom/google/common/collect/HashBiMap;->ensureCapacity(I)V

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/common/collect/HashBiMap;->size:I

    aput-object p2, v2, v4

    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aput-object p1, p2, v4

    invoke-virtual {p0, v4, v3}, Lcom/google/common/collect/HashBiMap;->insertIntoTableKToV(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->insertIntoTableVToK(II)V

    const/4 p1, -0x2

    if-ne v1, p1, :cond_3

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget p1, p1, v1

    :goto_1
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(ILjava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->removeEntryKeyHashKnown(II)V

    return-object v1
.end method

.method public final removeEntry(III)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->deleteFromTableKToV(II)V

    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->deleteFromTableVToK(II)V

    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget p2, p2, p1

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget p3, p3, p1

    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    sub-int/2addr p2, v0

    if-ne p2, p1, :cond_1

    goto :goto_5

    :cond_1
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget p3, p3, p2

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v2, v2, p2

    invoke-virtual {p0, p3, p1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    invoke-virtual {p0, p1, v2}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v2, p3, p2

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v4, v3, p2

    aput-object v2, p3, p1

    aput-object v4, v3, p1

    invoke-static {v2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result p3

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v3, v2, p3

    if-ne v3, p2, :cond_2

    aput p1, v2, p3

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget p3, p3, v3

    :goto_1
    move v5, v3

    move v3, p3

    move p3, v5

    if-ne v3, p2, :cond_5

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aput p1, v2, p3

    :goto_2
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v2, p3, p2

    aput v2, p3, p1

    aput v1, p3, p2

    invoke-static {v4}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/common/collect/HashBiMap;->bucket(I)I

    move-result p3

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v3, v2, p3

    if-ne v3, p2, :cond_3

    aput p1, v2, p3

    goto :goto_4

    :cond_3
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget p3, p3, v3

    :goto_3
    move v5, v3

    move v3, p3

    move p3, v5

    if-ne v3, p2, :cond_4

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aput p1, v2, p3

    :goto_4
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v2, p3, p2

    aput v2, p3, p1

    aput v1, p3, p2

    :goto_5
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 p3, p2, -0x1

    const/4 v1, 0x0

    aput-object v1, p1, p3

    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    add-int/lit8 p3, p2, -0x1

    aput-object v1, p1, p3

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    iget p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    return-void

    :cond_4
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget p3, p3, v3

    goto :goto_3

    :cond_5
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget p3, p3, v3

    goto :goto_1
.end method

.method public final removeEntryKeyHashKnown(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->removeEntry(III)V

    return-void
.end method

.method public final replaceKeyInEntry(ILjava/lang/Object;)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->findEntryByKey(ILjava/lang/Object;)I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    if-ne v1, v0, :cond_5

    if-ne v2, p1, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v2, v0, p1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne v2, v0, :cond_2

    move v2, v1

    :cond_2
    :goto_1
    const/4 v0, -0x2

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v1, v0, p1

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/google/common/collect/HashBiMap;->size:I

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v0, v0, p1

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v3, v3, p1

    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->deleteFromTableKToV(II)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->insertIntoTableKToV(II)V

    invoke-virtual {p0, v2, p1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->setSucceeds(II)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Key already present in map: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final replaceValueInEntry(ILjava/lang/Object;)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-static {p2}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->findEntryByValue(ILjava/lang/Object;)I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->deleteFromTableVToK(II)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aput-object p2, v0, p1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->insertIntoTableVToK(II)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Value already present in map: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setSucceeds(II)V
    .locals 2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aput p2, v1, p1

    :goto_0
    if-ne p2, v0, :cond_1

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aput p1, p0, p2

    :goto_1
    return-void
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    return p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->valueSet:Lcom/google/common/collect/HashBiMap$KeySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/HashBiMap$KeySet;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/HashBiMap$KeySet;-><init>(Lcom/google/common/collect/HashBiMap;I)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->valueSet:Lcom/google/common/collect/HashBiMap$KeySet;

    :cond_0
    return-object v0
.end method
