.class final Lcom/android/framework/protobuf/FloatArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "FloatArrayList.java"

# interfaces
.implements Lcom/android/framework/protobuf/Internal$FloatList;
.implements Ljava/util/RandomAccess;
.implements Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "Ljava/lang/Float;",
        ">;",
        "Lcom/android/framework/protobuf/Internal$FloatList;",
        "Ljava/util/RandomAccess;",
        "Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_LIST:Lcom/android/framework/protobuf/FloatArrayList;


# instance fields
.field private blacklist array:[F

.field private blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/framework/protobuf/FloatArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [F

    invoke-direct {v0, v2, v1}, Lcom/android/framework/protobuf/FloatArrayList;-><init>([FI)V

    sput-object v0, Lcom/android/framework/protobuf/FloatArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/FloatArrayList;

    sget-object v0, Lcom/android/framework/protobuf/FloatArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/FloatArrayList;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FloatArrayList;->makeImmutable()V

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/FloatArrayList;-><init>([FI)V

    return-void
.end method

.method private constructor blacklist <init>([FI)V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iput p2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    return-void
.end method

.method private blacklist addFloat(IF)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [F

    iget-object v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    :goto_0
    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aput p2, v0, p1

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist emptyList()Lcom/android/framework/protobuf/FloatArrayList;
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/FloatArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/FloatArrayList;

    return-object v0
.end method

.method private blacklist ensureIndexInRange(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

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

    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist add(ILjava/lang/Float;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(IF)V

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

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/FloatArrayList;->add(ILjava/lang/Float;)V

    return-void
.end method

.method public blacklist add(Ljava/lang/Float;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

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

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->add(Ljava/lang/Float;)Z

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
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    invoke-static {p1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/framework/protobuf/FloatArrayList;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    iget v1, v0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    const v1, 0x7fffffff

    iget v3, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v1, v3

    iget v3, v0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-lt v1, v3, :cond_3

    iget v3, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v4, v0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    array-length v4, v4

    if-le v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    iput-object v4, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    :cond_2
    iget-object v4, v0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iget-object v5, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iget v6, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v7, v0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    invoke-static {v4, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    return v4

    :cond_3
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v2
.end method

.method public blacklist addFloat(F)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [F

    iget-object v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iget v3, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    aput p1, v0, v1

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->indexOf(Ljava/lang/Object;)I

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
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/framework/protobuf/FloatArrayList;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/FloatArrayList;

    iget v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v3, v1, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    iget-object v2, v1, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    const/4 v3, 0x0

    :goto_0
    iget v5, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    aget v6, v2, v3

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    if-eq v5, v6, :cond_3

    return v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public blacklist get(I)Ljava/lang/Float;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->get(I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getFloat(I)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v0, v0, p1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .locals 5

    instance-of v0, p1, Ljava/lang/Float;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v4, v4, v3

    cmpl-float v4, v4, v0

    if-nez v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$FloatList;
    .locals 3

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Lcom/android/framework/protobuf/FloatArrayList;

    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/FloatArrayList;-><init>([FI)V

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

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$FloatList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)Ljava/lang/Float;
    .locals 5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v0, v0, p1

    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iget v4, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
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

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->remove(I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist test-api removeRange(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    iget v2, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->modCount:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist set(ILjava/lang/Float;)Ljava/lang/Float;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/FloatArrayList;->setFloat(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/FloatArrayList;->set(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setFloat(IF)F
    .locals 2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIsMutable()V

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/framework/protobuf/FloatArrayList;->array:[F

    aput p2, v1, p1

    return v0
.end method

.method public whitelist test-api size()I
    .locals 1

    iget v0, p0, Lcom/android/framework/protobuf/FloatArrayList;->size:I

    return v0
.end method
