.class final Lcom/android/framework/protobuf/ProtobufArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "ProtobufArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_LIST:Lcom/android/framework/protobuf/ProtobufArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/ProtobufArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/framework/protobuf/ProtobufArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/android/framework/protobuf/ProtobufArrayList;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/android/framework/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/ProtobufArrayList;

    sget-object v0, Lcom/android/framework/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/ProtobufArrayList;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ProtobufArrayList;->makeImmutable()V

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/ProtobufArrayList;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor blacklist <init>([Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    iput p2, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    return-void
.end method

.method private static blacklist createArray(I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)[TE;"
        }
    .end annotation

    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static blacklist emptyList()Lcom/android/framework/protobuf/ProtobufArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/framework/protobuf/ProtobufArrayList<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/ProtobufArrayList;

    return-object v0
.end method

.method private blacklist ensureIndexInRange(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ProtobufArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

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

    iget v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIsMutable()V

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/framework/protobuf/ProtobufArrayList;->createArray(I)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    aput-object p2, v0, p1

    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ProtobufArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIsMutable()V

    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    return v2
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
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

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ProtobufArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/ProtobufArrayList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/ProtobufArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/framework/protobuf/ProtobufArrayList<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/android/framework/protobuf/ProtobufArrayList;

    iget v2, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    invoke-direct {v1, v0, v2}, Lcom/android/framework/protobuf/ProtobufArrayList;-><init>([Ljava/lang/Object;I)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIsMutable()V

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    iget v4, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    iget v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    return-object v0
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIsMutable()V

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    aput-object p2, v1, p1

    iget v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    return-object v0
.end method

.method public whitelist test-api size()I
    .locals 1

    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    return v0
.end method
