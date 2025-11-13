.class public final Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MapFieldSchema;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p2, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    check-cast p3, Landroidx/datastore/preferences/protobuf/MapEntryLite;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    iget-object v3, p3, Landroidx/datastore/preferences/protobuf/MapEntryLite;->metadata:Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    invoke-static {v3, v1, p2}, Landroidx/datastore/preferences/protobuf/MapEntryLite;->computeSerializedSize(Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2, p2, v2, v0}, Landroidx/datastore/preferences/protobuf/FieldSet$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public final mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    check-cast p2, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->isMutable()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->mutableCopy()Landroidx/datastore/preferences/protobuf/MapFieldLite;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->ensureMutable()V

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object p1
.end method
