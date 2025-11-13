.class public abstract Landroidx/navigation/serialization/RouteSerializerKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final computeNavType(Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/lang/String;Ljava/util/Map;)Landroidx/navigation/NavType;
    .locals 6

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/reflect/KType;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v4

    move-object v5, v3

    check-cast v5, Lkotlinx/serialization/internal/KTypeWrapper;

    invoke-virtual {v5}, Lkotlinx/serialization/internal/KTypeWrapper;->isMarkedNullable()Z

    move-result v5

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sget-object v5, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    invoke-static {v5, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerialModuleImpl;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v4, v3, :cond_2

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    check-cast v1, Lkotlin/reflect/KType;

    if-eqz v1, :cond_3

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavType;

    goto :goto_1

    :cond_3
    move-object p2, v2

    :goto_1
    instance-of v0, p2, Landroidx/navigation/NavType;

    if-eqz v0, :cond_4

    move-object v2, p2

    :cond_4
    if-nez v2, :cond_b

    invoke-static {p0}, Landroidx/navigation/serialization/NavTypeConverterKt;->toInternalType(Lkotlinx/serialization/descriptors/SerialDescriptor;)Landroidx/navigation/serialization/InternalType;

    move-result-object p2

    sget-object v0, Landroidx/navigation/serialization/NavTypeConverterKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    sget-object p2, Landroidx/navigation/serialization/UNKNOWN;->INSTANCE:Landroidx/navigation/serialization/UNKNOWN;

    :goto_2
    move-object v2, p2

    goto/16 :goto_3

    :pswitch_0
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-static {p2}, Landroidx/navigation/serialization/NavTypeConverterKt;->toInternalType(Lkotlinx/serialization/descriptors/SerialDescriptor;)Landroidx/navigation/serialization/InternalType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_9

    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    const/4 v0, 0x3

    if-eq p2, v0, :cond_7

    const/4 v0, 0x4

    if-eq p2, v0, :cond_6

    const/4 v0, 0x5

    if-eq p2, v0, :cond_5

    sget-object p2, Landroidx/navigation/serialization/UNKNOWN;->INSTANCE:Landroidx/navigation/serialization/UNKNOWN;

    goto :goto_2

    :cond_5
    sget-object p2, Landroidx/navigation/NavType;->StringListType:Landroidx/navigation/NavType$Companion$StringListType$1;

    goto :goto_2

    :cond_6
    sget-object p2, Landroidx/navigation/NavType;->LongListType:Landroidx/navigation/NavType$Companion$LongListType$1;

    goto :goto_2

    :cond_7
    sget-object p2, Landroidx/navigation/NavType;->FloatListType:Landroidx/navigation/NavType$Companion$FloatListType$1;

    goto :goto_2

    :cond_8
    sget-object p2, Landroidx/navigation/NavType;->BoolListType:Landroidx/navigation/NavType$Companion$BoolListType$1;

    goto :goto_2

    :cond_9
    sget-object p2, Landroidx/navigation/NavType;->IntListType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto :goto_2

    :pswitch_1
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-static {p2}, Landroidx/navigation/serialization/NavTypeConverterKt;->toInternalType(Lkotlinx/serialization/descriptors/SerialDescriptor;)Landroidx/navigation/serialization/InternalType;

    move-result-object p2

    sget-object v0, Landroidx/navigation/serialization/InternalType;->STRING:Landroidx/navigation/serialization/InternalType;

    if-ne p2, v0, :cond_a

    sget-object p2, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType$Companion$StringArrayType$1;

    goto :goto_2

    :cond_a
    sget-object p2, Landroidx/navigation/serialization/UNKNOWN;->INSTANCE:Landroidx/navigation/serialization/UNKNOWN;

    goto :goto_2

    :pswitch_2
    sget-object p2, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType$Companion$LongArrayType$1;

    goto :goto_2

    :pswitch_3
    sget-object p2, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType$Companion$FloatArrayType$1;

    goto :goto_2

    :pswitch_4
    sget-object p2, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType$Companion$BoolArrayType$1;

    goto :goto_2

    :pswitch_5
    sget-object p2, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType$Companion$IntArrayType$1;

    goto :goto_2

    :pswitch_6
    sget-object p2, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType$Companion$StringType$1;

    goto :goto_2

    :pswitch_7
    sget-object p2, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType$Companion$LongType$1;

    goto :goto_2

    :pswitch_8
    sget-object p2, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType$Companion$FloatType$1;

    goto :goto_2

    :pswitch_9
    sget-object p2, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType$Companion$BoolType$1;

    goto :goto_2

    :pswitch_a
    sget-object p2, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType$Companion$IntType$1;

    goto :goto_2

    :cond_b
    :goto_3
    sget-object p2, Landroidx/navigation/serialization/UNKNOWN;->INSTANCE:Landroidx/navigation/serialization/UNKNOWN;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    return-object v2

    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cast "

    const-string v1, " of type "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to a NavType. Make sure to provide custom NavType for this argument."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final generateNavArguments(Lkotlinx/serialization/KSerializer;Ljava/util/Map;)Ljava/util/List;
    .locals 5

    new-instance v0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$1;

    invoke-direct {v0, p0}, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$1;-><init>(Lkotlinx/serialization/KSerializer;)V

    instance-of v1, p0, Lkotlinx/serialization/PolymorphicSerializer;

    if-nez v1, :cond_1

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-interface {v3, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;

    invoke-direct {v4, p0, v2, v3, p1}, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;-><init>(Lkotlinx/serialization/KSerializer;ILjava/lang/String;Ljava/util/Map;)V

    invoke-static {v4, v3}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Landroidx/navigation/NamedNavArgument;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$1;->invoke()Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public static generateRoutePattern$default(Lkotlinx/serialization/KSerializer;Ljava/util/Map;)Ljava/lang/String;
    .locals 7

    new-instance v0, Landroidx/navigation/serialization/RouteSerializerKt$generateRoutePattern$1;

    invoke-direct {v0, p0}, Landroidx/navigation/serialization/RouteSerializerKt$generateRoutePattern$1;-><init>(Lkotlinx/serialization/KSerializer;)V

    instance-of v1, p0, Lkotlinx/serialization/PolymorphicSerializer;

    if-nez v1, :cond_1

    new-instance v0, Landroidx/navigation/serialization/RouteBuilder;

    invoke-direct {v0, p0}, Landroidx/navigation/serialization/RouteBuilder;-><init>(Lkotlinx/serialization/KSerializer;)V

    new-instance v1, Landroidx/navigation/serialization/RouteSerializerKt$generateRoutePattern$2;

    invoke-direct {v1, v0}, Landroidx/navigation/serialization/RouteSerializerKt$generateRoutePattern$2;-><init>(Landroidx/navigation/serialization/RouteBuilder;)V

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-interface {v5, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-static {v5, v4, p1}, Landroidx/navigation/serialization/RouteSerializerKt;->computeNavType(Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/lang/String;Ljava/util/Map;)Landroidx/navigation/NavType;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v4, v5}, Landroidx/navigation/serialization/RouteSerializerKt$generateRoutePattern$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, v0, Landroidx/navigation/serialization/RouteBuilder;->path:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroidx/navigation/serialization/RouteBuilder;->pathArgs:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroidx/navigation/serialization/RouteBuilder;->queryArgs:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Landroidx/navigation/serialization/RouteSerializerKt$generateRoutePattern$1;->invoke()Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public static final generateRouteWithArgs(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    new-instance v1, Landroidx/navigation/serialization/RouteEncoder;

    invoke-direct {v1, v0, p1}, Landroidx/navigation/serialization/RouteEncoder;-><init>(Lkotlinx/serialization/KSerializer;Ljava/util/Map;)V

    iget-object v2, v1, Landroidx/navigation/serialization/RouteEncoder;->serializer:Lkotlinx/serialization/KSerializer;

    invoke-interface {v2, v1, p0}, Lkotlinx/serialization/KSerializer;->serialize(Lkotlinx/serialization/encoding/AbstractEncoder;Ljava/lang/Object;)V

    iget-object p0, v1, Landroidx/navigation/serialization/RouteEncoder;->map:Ljava/util/Map;

    invoke-static {p0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    new-instance v1, Landroidx/navigation/serialization/RouteBuilder;

    invoke-direct {v1, v0}, Landroidx/navigation/serialization/RouteBuilder;-><init>(Lkotlinx/serialization/KSerializer;)V

    new-instance v2, Landroidx/navigation/serialization/RouteSerializerKt$generateRouteWithArgs$1;

    invoke-direct {v2, p0, v1}, Landroidx/navigation/serialization/RouteSerializerKt$generateRouteWithArgs$1;-><init>(Ljava/util/Map;Landroidx/navigation/serialization/RouteBuilder;)V

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_1

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavType;

    if-eqz v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6, v4, v5}, Landroidx/navigation/serialization/RouteSerializerKt$generateRouteWithArgs$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MISSING NAV TYPE"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, v1, Landroidx/navigation/serialization/RouteBuilder;->path:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroidx/navigation/serialization/RouteBuilder;->pathArgs:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroidx/navigation/serialization/RouteBuilder;->queryArgs:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
