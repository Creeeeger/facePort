.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field public final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

.field public final excluder:Lcom/google/gson/internal/Excluder;

.field public final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field public final jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    const/4 v13, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v14, Ljava/lang/Object;

    invoke-virtual {v14, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v15, 0x0

    if-nez v2, :cond_0

    return-object v15

    :cond_0
    iget-object v11, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    move-object/from16 v2, p2

    invoke-virtual {v11, v2}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v10

    new-instance v9, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object v15, v8

    move-object v1, v9

    move-object v0, v10

    goto/16 :goto_c

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    move-object v6, v1

    move-object/from16 v16, v2

    :goto_0
    if-eq v6, v14, :cond_1

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v4, v5

    const/4 v3, 0x0

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_f

    aget-object v1, v5, v2

    invoke-virtual {v0, v1, v13}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v17

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v18

    if-nez v17, :cond_3

    if-nez v18, :cond_3

    move/from16 v20, v2

    move/from16 v24, v3

    move/from16 v21, v4

    move-object/from16 v31, v5

    move-object/from16 p2, v6

    move-object v15, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v22, v11

    move v1, v13

    move-object/from16 v23, v14

    move-object v13, v7

    goto/16 :goto_b

    :cond_3
    :try_start_0
    invoke-virtual {v1, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v15

    sget-object v19, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v6, v15, v13}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v13

    const-class v3, Lcom/google/gson/annotations/SerializedName;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/google/gson/annotations/SerializedName;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    invoke-interface {v3, v1}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move/from16 v20, v2

    :goto_2
    move-object v15, v3

    move/from16 v21, v4

    goto :goto_4

    :cond_4
    invoke-interface {v3}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v3

    move/from16 v20, v2

    array-length v2, v3

    if-nez v2, :cond_5

    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v21, v4

    array-length v4, v3

    const/16 v19, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v4, v3

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v4, :cond_6

    move/from16 v22, v4

    aget-object v4, v3, v15

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v22

    const/16 v19, 0x1

    goto :goto_3

    :cond_6
    move-object v15, v2

    :goto_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_d

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v14

    move-object/from16 v14, v22

    check-cast v14, Ljava/lang/String;

    move-object/from16 v22, v10

    if-eqz v3, :cond_7

    const/16 v17, 0x0

    :cond_7
    invoke-static {v13}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v10

    move-object/from16 v24, v2

    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    move/from16 v25, v3

    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v26, 0x1

    goto :goto_6

    :cond_8
    const/16 v26, 0x0

    :goto_6
    const-class v2, Lcom/google/gson/annotations/JsonAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/google/gson/annotations/JsonAdapter;

    if-eqz v2, :cond_9

    iget-object v3, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v12, v10, v2}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v2

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_a

    const/16 v27, 0x1

    goto :goto_8

    :cond_a
    const/16 v27, 0x0

    :goto_8
    if-nez v2, :cond_b

    invoke-virtual {v12, v10}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v2

    :cond_b
    move-object/from16 v28, v2

    new-instance v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object/from16 v29, v1

    move-object v1, v3

    move-object/from16 v0, v24

    move-object/from16 v2, p0

    move-object v12, v3

    const/16 v24, 0x0

    move-object v3, v14

    move/from16 v30, v4

    move/from16 v4, v17

    move-object/from16 v31, v5

    move/from16 v5, v18

    move-object/from16 p2, v6

    move-object/from16 v6, v29

    move-object/from16 v32, v13

    move-object v13, v7

    move/from16 v7, v27

    move-object/from16 v27, v15

    move-object v15, v8

    move-object/from16 v8, v28

    move-object/from16 v33, v9

    move-object/from16 v9, p1

    move-object/from16 v34, v22

    move-object/from16 v22, v11

    move/from16 v11, v26

    invoke-direct/range {v1 .. v11}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/gson/TypeAdapter;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Z)V

    invoke-interface {v15, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    if-nez v0, :cond_c

    :goto_9
    const/4 v1, 0x1

    goto :goto_a

    :cond_c
    move-object v2, v0

    goto :goto_9

    :goto_a
    add-int/lit8 v3, v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v6, p2

    move-object v7, v13

    move-object v8, v15

    move-object/from16 v11, v22

    move-object/from16 v14, v23

    move-object/from16 v15, v27

    move-object/from16 v1, v29

    move/from16 v4, v30

    move-object/from16 v5, v31

    move-object/from16 v13, v32

    move-object/from16 v9, v33

    move-object/from16 v10, v34

    goto/16 :goto_5

    :cond_d
    move-object v0, v2

    move-object/from16 v31, v5

    move-object/from16 p2, v6

    move-object v13, v7

    move-object v15, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v14

    const/4 v1, 0x1

    const/16 v24, 0x0

    if-nez v0, :cond_e

    :goto_b
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v6, p2

    move-object v7, v13

    move-object v8, v15

    move/from16 v4, v21

    move-object/from16 v11, v22

    move-object/from16 v14, v23

    move/from16 v3, v24

    move-object/from16 v5, v31

    move-object/from16 v9, v33

    move-object/from16 v10, v34

    const/4 v15, 0x0

    move v13, v1

    goto/16 :goto_1

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    move-object/from16 v29, v1

    move-object v1, v0

    new-instance v0, Lcom/google/gson/JsonIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed making field \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' accessible; either change its visibility or write a custom TypeAdapter for its declaring type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_f
    move-object/from16 p2, v6

    move-object v15, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v22, v11

    move v1, v13

    move-object/from16 v23, v14

    move-object v13, v7

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    sget-object v3, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v4, p2

    invoke-static {v0, v4, v2, v3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object v7, v13

    move-object v8, v15

    move-object/from16 v11, v22

    move-object/from16 v14, v23

    move-object/from16 v9, v33

    move-object/from16 v10, v34

    const/4 v15, 0x0

    move v13, v1

    goto/16 :goto_0

    :goto_c
    invoke-direct {v1, v0, v15}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    return-object v1
.end method

.method public final excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/Excluder;->excludeClassChecks(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, p2}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Z)V

    iget v0, p0, Lcom/google/gson/internal/Excluder;->modifiers:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-wide v0, p0, Lcom/google/gson/internal/Excluder;->version:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    const-class v0, Lcom/google/gson/annotations/Since;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/Since;

    const-class v1, Lcom/google/gson/annotations/Until;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/gson/annotations/Until;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/gson/annotations/Since;->value()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/gson/internal/Excluder;->version:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/google/gson/annotations/Until;->value()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/gson/internal/Excluder;->version:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    :cond_4
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/internal/Excluder;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    new-instance p2, Lcom/google/gson/FieldAttributes;

    invoke-direct {p2, p1}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_8
    :goto_1
    const/4 p0, 0x1

    goto :goto_3

    :cond_9
    :goto_2
    const/4 p0, 0x0

    :goto_3
    return p0
.end method
