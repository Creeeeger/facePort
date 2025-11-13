.class public final Lcom/google/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final instanceCreators:Ljava/util/Map;

.field public final reflectionFilters:Ljava/util/List;

.field public final useJdkUnsafe:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/google/gson/internal/ConstructorConstructor;->useJdkUnsafe:Z

    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor;->reflectionFilters:Ljava/util/List;

    return-void
.end method

.method public static checkInstantiable(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Abstract classes can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iget-object v4, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const-class v4, Ljava/util/EnumSet;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    new-instance v4, Lcom/google/gson/internal/ConstructorConstructor$5;

    invoke-direct {v4, v3, v2}, Lcom/google/gson/internal/ConstructorConstructor$5;-><init>(Ljava/lang/reflect/Type;I)V

    goto :goto_0

    :cond_0
    const-class v4, Ljava/util/EnumMap;

    if-ne p1, v4, :cond_1

    new-instance v4, Lcom/google/gson/internal/ConstructorConstructor$5;

    invoke-direct {v4, v3, v1}, Lcom/google/gson/internal/ConstructorConstructor$5;-><init>(Ljava/lang/reflect/Type;I)V

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    iget-object v4, p0, Lcom/google/gson/internal/ConstructorConstructor;->reflectionFilters:Ljava/util/List;

    invoke-static {v4}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->getFilterResult(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :catch_0
    move-object v4, v5

    goto :goto_2

    :cond_3
    :try_start_0
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v6, Lcom/google/gson/internal/reflect/ReflectionHelper;->RECORD_HELPER:Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;

    :try_start_1
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v5

    goto :goto_1

    :catch_1
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed making constructor \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/gson/internal/reflect/ReflectionHelper;->constructorToString(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_4

    new-instance v4, Lcom/google/gson/internal/ConstructorConstructor$3;

    invoke-direct {v4, v6, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    new-instance v6, Lcom/google/gson/internal/ConstructorConstructor$9;

    invoke-direct {v6, v4}, Lcom/google/gson/internal/ConstructorConstructor$9;-><init>(Ljava/lang/reflect/Constructor;)V

    move-object v4, v6

    :goto_2
    if-eqz v4, :cond_5

    return-object v4

    :cond_5
    const-class v4, Ljava/util/Collection;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-class v3, Ljava/util/SortedSet;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v5, Lcom/google/gson/internal/ConstructorConstructor$10;

    invoke-direct {v5, v2}, Lcom/google/gson/internal/ConstructorConstructor$10;-><init>(I)V

    goto/16 :goto_3

    :cond_6
    const-class v3, Ljava/util/Set;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v5, Lcom/google/gson/internal/ConstructorConstructor$10;

    invoke-direct {v5, v1}, Lcom/google/gson/internal/ConstructorConstructor$10;-><init>(I)V

    goto/16 :goto_3

    :cond_7
    const-class v3, Ljava/util/Queue;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v5, Lcom/google/gson/internal/ConstructorConstructor$10;

    invoke-direct {v5, v0}, Lcom/google/gson/internal/ConstructorConstructor$10;-><init>(I)V

    goto :goto_3

    :cond_8
    new-instance v5, Lcom/google/gson/internal/ConstructorConstructor$10;

    const/4 v0, 0x3

    invoke-direct {v5, v0}, Lcom/google/gson/internal/ConstructorConstructor$10;-><init>(I)V

    goto :goto_3

    :cond_9
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v5, Lcom/google/gson/internal/ConstructorConstructor$10;

    const/4 v0, 0x4

    invoke-direct {v5, v0}, Lcom/google/gson/internal/ConstructorConstructor$10;-><init>(I)V

    goto :goto_3

    :cond_a
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v5, Lcom/google/gson/internal/ConstructorConstructor$10;

    const/4 v0, 0x5

    invoke-direct {v5, v0}, Lcom/google/gson/internal/ConstructorConstructor$10;-><init>(I)V

    goto :goto_3

    :cond_b
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v5, Lcom/google/gson/internal/ConstructorConstructor$10;

    const/4 v0, 0x6

    invoke-direct {v5, v0}, Lcom/google/gson/internal/ConstructorConstructor$10;-><init>(I)V

    goto :goto_3

    :cond_c
    instance-of v0, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_d

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v5, Lcom/google/gson/internal/ConstructorConstructor$10;

    const/4 v0, 0x7

    invoke-direct {v5, v0}, Lcom/google/gson/internal/ConstructorConstructor$10;-><init>(I)V

    goto :goto_3

    :cond_d
    new-instance v5, Lcom/google/gson/internal/ConstructorConstructor$10;

    const/16 v0, 0x8

    invoke-direct {v5, v0}, Lcom/google/gson/internal/ConstructorConstructor$10;-><init>(I)V

    :cond_e
    :goto_3
    if-eqz v5, :cond_f

    return-object v5

    :cond_f
    invoke-static {p1}, Lcom/google/gson/internal/ConstructorConstructor;->checkInstantiable(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance p0, Lcom/google/gson/internal/ConstructorConstructor$3;

    invoke-direct {p0, v0, v2}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_10
    iget-boolean p0, p0, Lcom/google/gson/internal/ConstructorConstructor;->useJdkUnsafe:Z

    if-eqz p0, :cond_11

    new-instance p0, Lcom/google/gson/internal/ConstructorConstructor$9;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/ConstructorConstructor$9;-><init>(Ljava/lang/Class;)V

    goto :goto_4

    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unable to create instance of "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/gson/internal/ConstructorConstructor$3;

    invoke-direct {p1, p0, v1}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    move-object p0, p1

    :goto_4
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
