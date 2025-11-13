.class final Lcom/android/framework/protobuf/BooleanArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "BooleanArrayList.java"

# interfaces
.implements Lcom/android/framework/protobuf/Internal$BooleanList;
.implements Ljava/util/RandomAccess;
.implements Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/android/framework/protobuf/Internal$BooleanList;",
        "Ljava/util/RandomAccess;",
        "Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_LIST:Lcom/android/framework/protobuf/BooleanArrayList;


# instance fields
.field private blacklist array:[Z

.field private blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/framework/protobuf/BooleanArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Z

    invoke-direct {v0, v2, v1}, Lcom/android/framework/protobuf/BooleanArrayList;-><init>([ZI)V

    sput-object v0, Lcom/android/framework/protobuf/BooleanArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/BooleanArrayList;

    sget-object v0, Lcom/android/framework/protobuf/BooleanArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/BooleanArrayList;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/BooleanArrayList;->makeImmutable()V

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/BooleanArrayList;-><init>([ZI)V

    return-void
.end method

.method private constructor blacklist <init>([ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iput p2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    return-void
.end method

.method private blacklist addBoolean(IZ)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Z

    iget-object v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    :goto_0
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aput-boolean p2, v0, p1

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist emptyList()Lcom/android/framework/protobuf/BooleanArrayList;
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/BooleanArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/BooleanArrayList;

    return-object v0
.end method

.method private blacklist ensureIndexInRange(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

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

    iget v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist add(ILjava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(IZ)V

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

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BooleanArrayList;->add(ILjava/lang/Boolean;)V

    return-void
.end method

.method public blacklist add(Ljava/lang/Boolean;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

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

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->add(Ljava/lang/Boolean;)Z

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
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    invoke-static {p1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/framework/protobuf/BooleanArrayList;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/BooleanArrayList;

    iget v1, v0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    const v1, 0x7fffffff

    iget v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v1, v3

    iget v3, v0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-lt v1, v3, :cond_3

    iget v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget v4, v0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    array-length v4, v4

    if-le v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v4

    iput-object v4, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    :cond_2
    iget-object v4, v0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget-object v5, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v6, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget v7, v0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    invoke-static {v4, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    return v4

    :cond_3
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v2
.end method

.method public blacklist addBoolean(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Z

    iget-object v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    aput-boolean p1, v0, v1

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->indexOf(Ljava/lang/Object;)I

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
    instance-of v1, p1, Lcom/android/framework/protobuf/BooleanArrayList;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/BooleanArrayList;

    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget v3, v1, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    iget-object v2, v1, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    const/4 v3, 0x0

    :goto_0
    iget v5, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v5, v5, v3

    aget-boolean v6, v2, v3

    if-eq v5, v6, :cond_3

    return v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public blacklist get(I)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->get(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getBoolean(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v3, v3, v1

    invoke-static {v3}, Lcom/android/framework/protobuf/Internal;->hashBoolean(Z)I

    move-result v3

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .locals 5

    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v4, v4, v3

    if-ne v4, v0, :cond_1

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$BooleanList;
    .locals 3

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Lcom/android/framework/protobuf/BooleanArrayList;

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/BooleanArrayList;-><init>([ZI)V

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

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$BooleanList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)Ljava/lang/Boolean;
    .locals 5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v0, v0, p1

    iget v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v4, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->remove(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist test-api removeRange(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist set(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BooleanArrayList;->setBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BooleanArrayList;->set(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBoolean(IZ)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v0, v0, p1

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aput-boolean p2, v1, p1

    return v0
.end method

.method public whitelist test-api size()I
    .locals 1

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    return v0
.end method
