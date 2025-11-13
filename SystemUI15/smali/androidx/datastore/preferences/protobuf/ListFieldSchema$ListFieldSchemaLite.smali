.class public final Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;
.super Landroidx/datastore/preferences/protobuf/ListFieldSchema;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;-><init>(Landroidx/datastore/preferences/protobuf/ListFieldSchema$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/ListFieldSchema$1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;-><init>()V

    return-void
.end method


# virtual methods
.method public final makeImmutableListAt(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    check-cast p0, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->isMutable:Z

    return-void
.end method

.method public final mergeListsAt(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p3, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-static {p4, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    move-object v2, p0

    check-cast v2, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;

    iget-boolean v2, v2, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->isMutable:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    invoke-interface {p0, v1}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object p0

    :cond_0
    invoke-interface {p0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p4, p0

    :cond_2
    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .locals 1

    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-object v0, p0

    check-cast v0, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;

    iget-boolean v0, v0, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->isMutable:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-interface {p0, v0}, Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object p0

    invoke-static {p2, p3, p1, p0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method
