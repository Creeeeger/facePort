.class public Lcom/android/framework/protobuf/UnmodifiableLazyStringList;
.super Ljava/util/AbstractList;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Lcom/android/framework/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/framework/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final blacklist list:Lcom/android/framework/protobuf/LazyStringList;


# direct methods
.method public constructor blacklist <init>(Lcom/android/framework/protobuf/LazyStringList;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/framework/protobuf/UnmodifiableLazyStringList;)Lcom/android/framework/protobuf/LazyStringList;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    return-object v0
.end method


# virtual methods
.method public blacklist add(Lcom/android/framework/protobuf/ByteString;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist add([B)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist addAllByteArray(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist addAllByteString(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist asByteArrayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/LazyStringList;->asByteArrayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist asByteStringList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/LazyStringList;->asByteStringList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getByteArray(I)[B
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/LazyStringList;->getByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getByteString(I)Lcom/android/framework/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/LazyStringList;->getByteString(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRaw(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnderlyingElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnmodifiableView()Lcom/android/framework/protobuf/LazyStringList;
    .locals 0

    return-object p0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$2;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$2;-><init>(Lcom/android/framework/protobuf/UnmodifiableLazyStringList;)V

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;-><init>(Lcom/android/framework/protobuf/UnmodifiableLazyStringList;I)V

    return-object v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/LazyStringList;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist set(ILcom/android/framework/protobuf/ByteString;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist set(I[B)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api size()I
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method
