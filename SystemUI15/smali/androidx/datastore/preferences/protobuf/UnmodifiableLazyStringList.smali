.class public final Landroidx/datastore/preferences/protobuf/UnmodifiableLazyStringList;
.super Ljava/util/AbstractList;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# instance fields
.field public final list:Landroidx/datastore/preferences/protobuf/LazyStringList;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/LazyStringList;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/UnmodifiableLazyStringList;->list:Landroidx/datastore/preferences/protobuf/LazyStringList;

    return-void
.end method


# virtual methods
.method public final add(Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/UnmodifiableLazyStringList;->list:Landroidx/datastore/preferences/protobuf/LazyStringList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getRaw(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/UnmodifiableLazyStringList;->list:Landroidx/datastore/preferences/protobuf/LazyStringList;

    invoke-interface {p0, p1}, Landroidx/datastore/preferences/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getUnderlyingElements()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/UnmodifiableLazyStringList;->list:Landroidx/datastore/preferences/protobuf/LazyStringList;

    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUnmodifiableView()Landroidx/datastore/preferences/protobuf/LazyStringList;
    .locals 0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/UnmodifiableLazyStringList$2;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/UnmodifiableLazyStringList$2;-><init>(Landroidx/datastore/preferences/protobuf/UnmodifiableLazyStringList;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/UnmodifiableLazyStringList$1;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/UnmodifiableLazyStringList$1;-><init>(Landroidx/datastore/preferences/protobuf/UnmodifiableLazyStringList;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/UnmodifiableLazyStringList;->list:Landroidx/datastore/preferences/protobuf/LazyStringList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
