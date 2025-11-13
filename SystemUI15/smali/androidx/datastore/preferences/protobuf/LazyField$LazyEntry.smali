.class public final Landroidx/datastore/preferences/protobuf/LazyField$LazyEntry;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field public final entry:Ljava/util/Map$Entry;


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Landroidx/datastore/preferences/protobuf/LazyField;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map$Entry;Landroidx/datastore/preferences/protobuf/LazyField$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/LazyField$LazyEntry;-><init>(Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/LazyField;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyField;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->getValue(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/MessageLite;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/LazyField;

    check-cast p1, Landroidx/datastore/preferences/protobuf/MessageLite;

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
