.class public abstract synthetic Lkotlinx/serialization/SerializersKt__SerializersKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final serializerByKTypeImpl$SerializersKt__SerializersKt(Lkotlinx/serialization/modules/SerialModuleImpl;Lkotlin/reflect/KType;Z)Lkotlinx/serialization/KSerializer;
    .locals 5

    invoke-static {p1}, Lkotlinx/serialization/internal/Platform_commonKt;->kclass(Lkotlin/reflect/KType;)Lkotlin/reflect/KClass;

    move-result-object v0

    check-cast p1, Lkotlinx/serialization/internal/KTypeWrapper;

    invoke-virtual {p1}, Lkotlinx/serialization/internal/KTypeWrapper;->isMarkedNullable()Z

    move-result v1

    invoke-virtual {p1}, Lkotlinx/serialization/internal/KTypeWrapper;->getArguments()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KTypeProjection;

    iget-object v3, v3, Lkotlin/reflect/KTypeProjection;->type:Lkotlin/reflect/KType;

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Star projections in type arguments are not allowed, but had "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    if-nez v1, :cond_3

    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE:Lkotlinx/serialization/internal/SerializerCache;

    invoke-interface {p1, v0}, Lkotlinx/serialization/internal/SerializerCache;->get(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v3

    goto :goto_2

    :cond_3
    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/SerializerCache;

    invoke-interface {p1, v0}, Lkotlinx/serialization/internal/SerializerCache;->get(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

    invoke-interface {p1, v0, v2}, Lkotlinx/serialization/internal/ParametrizedSerializerCache;->get-gIAlu-s(Lkotlin/reflect/KClass;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_5
    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

    invoke-interface {p1, v0, v2}, Lkotlinx/serialization/internal/ParametrizedSerializerCache;->get-gIAlu-s(Lkotlin/reflect/KClass;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    sget v4, Lkotlin/Result;->$r8$clinit:I

    instance-of v4, p1, Lkotlin/Result$Failure;

    if-eqz v4, :cond_6

    move-object p1, v3

    :cond_6
    check-cast p1, Lkotlinx/serialization/KSerializer;

    :goto_2
    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/modules/SerialModuleImpl;->getContextual(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    goto :goto_3

    :cond_8
    invoke-static {p0, v2, p2}, Lkotlinx/serialization/SerializersKt;->serializersForParameters(Lkotlinx/serialization/modules/SerialModuleImpl;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_9

    return-object v3

    :cond_9
    new-instance p2, Lkotlinx/serialization/SerializersKt__SerializersKt$serializerByKTypeImpl$contextualSerializer$1;

    invoke-direct {p2, v2}, Lkotlinx/serialization/SerializersKt__SerializersKt$serializerByKTypeImpl$contextualSerializer$1;-><init>(Ljava/util/List;)V

    invoke-static {v0, p1, p2}, Lkotlinx/serialization/SerializersKt;->parametrizedSerializerOrNull(Lkotlin/reflect/KClass;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/KSerializer;

    move-result-object p2

    if-nez p2, :cond_a

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/modules/SerialModuleImpl;->getContextual(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    goto :goto_3

    :cond_a
    move-object p0, p2

    :goto_3
    if-eqz p0, :cond_d

    if-eqz v1, :cond_c

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    new-instance p1, Lkotlinx/serialization/internal/NullableSerializer;

    invoke-direct {p1, p0}, Lkotlinx/serialization/internal/NullableSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    move-object p0, p1

    :cond_c
    :goto_4
    move-object v3, p0

    :cond_d
    return-object v3
.end method
