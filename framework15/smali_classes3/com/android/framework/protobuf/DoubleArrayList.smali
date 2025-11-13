.class final Lcom/android/framework/protobuf/DoubleArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "DoubleArrayList.java"

# interfaces
.implements Lcom/android/framework/protobuf/Internal$DoubleList;
.implements Ljava/util/RandomAccess;
.implements Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "Ljava/lang/Double;",
        ">;",
        "Lcom/android/framework/protobuf/Internal$DoubleList;",
        "Ljava/util/RandomAccess;",
        "Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_LIST:Lcom/android/framework/protobuf/DoubleArrayList;


# instance fields
.field private blacklist array:[D

.field private blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/framework/protobuf/DoubleArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [D

    invoke-direct {v0, v2, v1}, Lcom/android/framework/protobuf/DoubleArrayList;-><init>([DI)V

    sput-object v0, Lcom/android/framework/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/DoubleArrayList;

    sget-object v0, Lcom/android/framework/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/DoubleArrayList;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/DoubleArrayList;->makeImmutable()V

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/DoubleArrayList;-><init>([DI)V

    return-void
.end method

.method private constructor blacklist <init>([DI)V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    iput p2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    return-void
.end method

.method private blacklist addDouble(ID)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIsMutable()V

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    iget-object v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [D

    iget-object v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    :goto_0
    iget-object v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aput-wide p2, v0, p1

    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist emptyList()Lcom/android/framework/protobuf/DoubleArrayList;
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/DoubleArrayList;

    return-object v0
.end method

.method private blacklist ensureIndexInRange(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist add(ILjava/lang/Double;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(ID)V

    return-void
.end method

.method public bridge synthetic whitelist test-api add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/DoubleArrayList;->add(ILjava/lang/Double;)V

    return-void
.end method

.method public blacklist add(Ljava/lang/Double;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->add(Ljava/lang/Double;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIsMutable()V

    invoke-static {p1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/framework/protobuf/DoubleArrayList;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/DoubleArrayList;

    iget v1, v0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    const v1, 0x7fffffff

    iget v3, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v1, v3

    iget v3, v0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    if-lt v1, v3, :cond_3

    iget v3, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    iget v4, v0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    array-length v4, v4

    if-le v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v4

    iput-object v4, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    :cond_2
    iget-object v4, v0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    iget-object v5, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    iget v6, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    iget v7, v0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    invoke-static {v4, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    iget v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    return v4

    :cond_3
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v2
.end method

.method public blacklist addDouble(D)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIsMutable()V

    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [D

    iget-object v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    iget v3, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    iget v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/framework/protobuf/DoubleArrayList;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/DoubleArrayList;

    iget v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    iget v3, v1, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    iget-object v2, v1, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    const/4 v3, 0x0

    :goto_0
    iget v5, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aget-wide v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    aget-wide v7, v2, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    return v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public blacklist get(I)Ljava/lang/Double;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->get(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getDouble(I)D
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v4, v0, 0x1f

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v5

    add-int v0, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .locals 7

    instance-of v0, p1, Ljava/lang/Double;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/DoubleArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    iget-object v5, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aget-wide v5, v5, v4

    cmpl-double v5, v5, v2

    if-nez v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$DoubleList;
    .locals 3

    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Lcom/android/framework/protobuf/DoubleArrayList;

    iget-object v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/DoubleArrayList;-><init>([DI)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$DoubleList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)Ljava/lang/Double;
    .locals 6

    invoke-virtual {p0}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIsMutable()V

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aget-wide v0, v0, p1

    iget v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    iget v5, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    iget v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic whitelist test-api remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->remove(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist test-api removeRange(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIsMutable()V

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    iget-object v1, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    iget v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->modCount:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist set(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/DoubleArrayList;->setDouble(ID)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/DoubleArrayList;->set(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDouble(ID)D
    .locals 3

    invoke-virtual {p0}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIsMutable()V

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aget-wide v0, v0, p1

    iget-object v2, p0, Lcom/android/framework/protobuf/DoubleArrayList;->array:[D

    aput-wide p2, v2, p1

    return-wide v0
.end method

.method public whitelist test-api size()I
    .locals 1

    iget v0, p0, Lcom/android/framework/protobuf/DoubleArrayList;->size:I

    return v0
.end method
