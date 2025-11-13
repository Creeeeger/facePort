.class public final Landroidx/navigation/serialization/RouteEncoder;
.super Lkotlinx/serialization/encoding/AbstractEncoder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public elementIndex:I

.field public final map:Ljava/util/Map;

.field public final serializer:Lkotlinx/serialization/KSerializer;

.field public final serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

.field public final typeMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/navigation/NavType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractEncoder;-><init>()V

    iput-object p1, p0, Landroidx/navigation/serialization/RouteEncoder;->serializer:Lkotlinx/serialization/KSerializer;

    iput-object p2, p0, Landroidx/navigation/serialization/RouteEncoder;->typeMap:Ljava/util/Map;

    sget-object p1, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    iput-object p1, p0, Landroidx/navigation/serialization/RouteEncoder;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/serialization/RouteEncoder;->map:Ljava/util/Map;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/navigation/serialization/RouteEncoder;->elementIndex:I

    return-void
.end method


# virtual methods
.method public final encodeElement(I)V
    .locals 0

    iput p1, p0, Landroidx/navigation/serialization/RouteEncoder;->elementIndex:I

    return-void
.end method

.method public final encodeNull()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/navigation/serialization/RouteEncoder;->internalEncodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/navigation/serialization/RouteEncoder;->internalEncodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeValue(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/navigation/serialization/RouteEncoder;->internalEncodeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getSerializersModule()Lkotlinx/serialization/modules/SerialModuleImpl;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/serialization/RouteEncoder;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    return-object p0
.end method

.method public final internalEncodeValue(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/navigation/serialization/RouteEncoder;->serializer:Lkotlinx/serialization/KSerializer;

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    iget v1, p0, Landroidx/navigation/serialization/RouteEncoder;->elementIndex:I

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/navigation/serialization/RouteEncoder;->typeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavType;

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroidx/navigation/CollectionNavType;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/navigation/CollectionNavType;

    invoke-virtual {v1, p1}, Landroidx/navigation/CollectionNavType;->serializeAsValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroidx/navigation/NavType;->serializeAsValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Landroidx/navigation/serialization/RouteEncoder;->map:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string p0, "Cannot find NavType for argument "

    const-string p1, ". Please provide NavType through typeMap."

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
