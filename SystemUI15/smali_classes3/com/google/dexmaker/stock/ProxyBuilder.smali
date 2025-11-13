.class public final Lcom/google/dexmaker/stock/ProxyBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;


# instance fields
.field public final constructorArgValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Byte;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Long;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Short;

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/Float;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Double;

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Character;

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-static {v10}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v1

    const-string/jumbo v11, "valueOf"

    filled-new-array {v10}, [Lcom/google/dexmaker/TypeId;

    move-result-object v12

    invoke-virtual {v1, v1, v11, v12}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v1

    sget-object v11, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;

    check-cast v11, Ljava/util/HashMap;

    invoke-virtual {v11, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v10, Lcom/google/dexmaker/TypeId;->BOOLEAN:Lcom/google/dexmaker/TypeId;

    const/4 v11, 0x0

    new-array v12, v11, [Lcom/google/dexmaker/TypeId;

    const-string v13, "booleanValue"

    invoke-virtual {v2, v10, v13, v12}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    const-string v10, "intValue"

    new-array v12, v11, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v10, v12}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->BYTE:Lcom/google/dexmaker/TypeId;

    const-string v4, "byteValue"

    new-array v10, v11, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v4, v10}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->LONG:Lcom/google/dexmaker/TypeId;

    const-string v4, "longValue"

    new-array v5, v11, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->SHORT:Lcom/google/dexmaker/TypeId;

    const-string/jumbo v4, "shortValue"

    new-array v5, v11, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->FLOAT:Lcom/google/dexmaker/TypeId;

    const-string v4, "floatValue"

    new-array v5, v11, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->DOUBLE:Lcom/google/dexmaker/TypeId;

    const-string v4, "doubleValue"

    new-array v5, v11, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->CHAR:Lcom/google/dexmaker/TypeId;

    const-string v4, "charValue"

    new-array v5, v11, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class p1, Lcom/google/dexmaker/stock/ProxyBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Class;

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgValues:[Ljava/lang/Object;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-void
.end method

.method public static varargs callSuper(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "super$"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    const/16 v4, 0x5f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x5b

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3b

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method
