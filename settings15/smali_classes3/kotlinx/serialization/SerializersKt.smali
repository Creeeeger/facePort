.class public abstract Lkotlinx/serialization/SerializersKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlinx/serialization/KSerializer;

    invoke-static/range {p0 .. p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lkotlinx/serialization/KSerializer;

    const-string v4, "args"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_0

    const-class v4, Lkotlinx/serialization/Serializable;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_0

    const-class v4, Lkotlinx/serialization/Polymorphic;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lkotlinx/serialization/internal/EnumSerializer;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getCanonicalName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type kotlin.Array<out kotlin.Enum<*>>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Enum;

    invoke-direct {v2, v3, v1}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    goto/16 :goto_18

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    const/4 v5, 0x0

    const-class v6, Lkotlinx/serialization/PolymorphicSerializer;

    if-eqz v4, :cond_3

    const-class v4, Lkotlinx/serialization/Serializable;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/Serializable;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lkotlinx/serialization/Serializable;->with()Ljava/lang/Class;

    move-result-object v4

    sget-object v7, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v7, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v7, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v4, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-direct {v4, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    :goto_1
    if-eqz v4, :cond_3

    :goto_2
    move-object v2, v4

    goto/16 :goto_18

    :cond_3
    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lkotlinx/serialization/KSerializer;

    const-string v7, "Companion"

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-object v7, v5

    :goto_3
    if-nez v7, :cond_4

    move-object v4, v5

    goto :goto_4

    :cond_4
    array-length v9, v4

    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lkotlinx/serialization/KSerializer;

    invoke-static {v7, v4}, Lkotlinx/serialization/internal/PlatformKt;->invokeSerializerOnCompanion(Ljava/lang/Object;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "INSTANCE"

    if-eqz v4, :cond_b

    const-string v9, "java."

    invoke-static {v4, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "kotlin."

    invoke-static {v4, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_8

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    const-string v9, "getDeclaredFields(...)"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v9, v4

    move v10, v1

    move v11, v10

    move-object v12, v5

    :goto_5
    if-ge v10, v9, :cond_9

    aget-object v13, v4, v10

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-eqz v14, :cond_8

    if-eqz v11, :cond_7

    :goto_6
    move-object v12, v5

    goto :goto_7

    :cond_7
    move v11, v8

    move-object v12, v13

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_9
    if-nez v11, :cond_a

    goto :goto_6

    :cond_a
    :goto_7
    if-nez v12, :cond_c

    :cond_b
    :goto_8
    move-object v1, v5

    goto :goto_c

    :cond_c
    invoke-virtual {v12, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    const-string v10, "getMethods(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v10, v9

    move v11, v1

    move v12, v11

    move-object v13, v5

    :goto_9
    if-ge v11, v10, :cond_f

    aget-object v14, v9, v11

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v1, "serializer"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const-string v15, "getParameterTypes(...)"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v1

    if-nez v1, :cond_e

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-class v15, Lkotlinx/serialization/KSerializer;

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v12, :cond_d

    :goto_a
    move-object v13, v5

    goto :goto_b

    :cond_d
    move v12, v8

    move-object v13, v14

    :cond_e
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x0

    goto :goto_9

    :cond_f
    if-nez v12, :cond_10

    goto :goto_a

    :cond_10
    :goto_b
    if-nez v13, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {v13, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lkotlinx/serialization/KSerializer;

    if-eqz v4, :cond_b

    check-cast v1, Lkotlinx/serialization/KSerializer;

    :goto_c
    if-eqz v1, :cond_12

    :goto_d
    move-object v2, v1

    goto/16 :goto_18

    :cond_12
    array-length v1, v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lkotlinx/serialization/KSerializer;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getDeclaredClasses(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v9, v2

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v9, :cond_14

    aget-object v11, v2, v10

    const-class v12, Lkotlinx/serialization/internal/NamedCompanion;

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    if-eqz v12, :cond_13

    goto :goto_f

    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_14
    move-object v11, v5

    :goto_f
    if-nez v11, :cond_15

    :catchall_1
    move-object v2, v5

    goto :goto_10

    :cond_15
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_10
    if-eqz v2, :cond_16

    array-length v9, v1

    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lkotlinx/serialization/KSerializer;

    invoke-static {v2, v1}, Lkotlinx/serialization/internal/PlatformKt;->invokeSerializerOnCompanion(Ljava/lang/Object;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    if-eqz v1, :cond_16

    :goto_11
    move-object v2, v1

    goto :goto_16

    :cond_16
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    move-object v9, v5

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_12
    if-ge v4, v2, :cond_19

    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "$serializer"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    if-eqz v16, :cond_17

    :goto_13
    move-object v9, v5

    goto :goto_14

    :cond_17
    move/from16 v16, v8

    move-object v9, v10

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_19
    if-nez v16, :cond_1a

    goto :goto_13

    :cond_1a
    :goto_14
    if-eqz v9, :cond_1b

    invoke-virtual {v9, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_15

    :cond_1b
    move-object v1, v5

    :goto_15
    instance-of v2, v1, Lkotlinx/serialization/KSerializer;

    if-eqz v2, :cond_1c

    check-cast v1, Lkotlinx/serialization/KSerializer;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_11

    :catch_0
    :cond_1c
    move-object v1, v5

    goto :goto_11

    :goto_16
    if-eqz v2, :cond_1d

    goto :goto_18

    :cond_1d
    const-class v1, Lkotlinx/serialization/Polymorphic;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_1e

    goto :goto_17

    :cond_1e
    const-class v1, Lkotlinx/serialization/Serializable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/Serializable;

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Lkotlinx/serialization/Serializable;->with()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v2, v6}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :goto_17
    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    goto/16 :goto_d

    :cond_1f
    move-object v2, v5

    :goto_18
    if-nez v2, :cond_20

    sget-object v1, Lkotlinx/serialization/internal/PrimitivesKt;->BUILTIN_SERIALIZERS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/serialization/KSerializer;

    :cond_20
    if-nez v2, :cond_22

    new-instance v1, Lkotlinx/serialization/SerializationException;

    invoke-interface/range {p0 .. p0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    const-string v0, "<local class name not available>"

    :cond_21
    const-string v2, "Serializer for class \'"

    const-string v3, "\' is not found.\nPlease ensure that class is marked as \'@Serializable\' and that the serialization compiler plugin is applied.\n"

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    return-object v2
.end method
