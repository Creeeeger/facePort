.class public Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;
.super Ljava/lang/Object;
.source "BufferExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist binaryKeySEP:Ljava/lang/String; = "->"

.field private static volatile blacklist sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;


# instance fields
.field private final blacklist extensionClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "*",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist releases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist transforms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->extensionClassMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->transforms:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->releases:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->loggers:Ljava/util/Map;

    .line 68
    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method static synthetic blacklist access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist addToClassMap(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 82
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->extensionClassMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    return-void
.end method

.method private blacklist findAvailableBinaryKey(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "registry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TT2;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 202
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<TT1;>;"
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<TT2;>;"
    .local p3, "registry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;>;"
    move-object/from16 v8, p3

    invoke-virtual/range {p0 .. p2}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    sget-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no transform exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", find alternatives"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v14, "fromList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v15, "toList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;

    move-object v9, v1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 209
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 238
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, v8}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda5;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object v4, v7

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object v11, v7

    .end local v7    # "key":Ljava/lang/String;
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 239
    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;

    .line 259
    .local v0, "found":Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;
    invoke-interface {v8, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 203
    .end local v0    # "found":Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;
    .end local v11    # "key":Ljava/lang/String;
    .end local v14    # "fromList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;>;"
    .end local v15    # "toList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;>;"
    .restart local v7    # "key":Ljava/lang/String;
    :cond_0
    move-object v11, v7

    .line 261
    .end local v7    # "key":Ljava/lang/String;
    .restart local v11    # "key":Ljava/lang/String;
    :goto_0
    return-object v11
.end method

.method private blacklist findAvailableUnaryKey(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "registry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 182
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "registry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TR;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda23;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda23;-><init>(Ljava/lang/Class;)V

    .line 185
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 192
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda24;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda24;-><init>(Ljava/lang/Class;)V

    .line 193
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 194
    .local v1, "found":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .end local v1    # "found":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static blacklist getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;
    .locals 2

    .line 25
    sget-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;-><init>()V

    sput-object v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    return-object v0
.end method

.method static synthetic blacklist lambda$findAvailableBinaryKey$16(Landroid/util/Pair;Landroid/util/Pair;)Z
    .locals 2
    .param p0, "it1"    # Landroid/util/Pair;
    .param p1, "it"    # Landroid/util/Pair;

    .line 241
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$findAvailableBinaryKey$19(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/UnsupportedOperationException;
    .locals 3
    .param p0, "from"    # Ljava/lang/Class;
    .param p1, "to"    # Ljava/lang/Class;

    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no extension exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$findAvailableUnaryKey$13(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "e"    # Ljava/lang/String;

    .line 187
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic blacklist lambda$findAvailableUnaryKey$14(Ljava/lang/Class;)Ljava/lang/UnsupportedOperationException;
    .locals 3
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no extension exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$getLog$12(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/Object;
    .param p1, "e"    # Ljava/util/function/Function;

    .line 178
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$new$0(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/os/ParcelFileDescriptor;)Ljava/lang/String;
    .locals 3
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "fd=%d, len=%ld"

    invoke-static {v1, v0}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$registerTransforms$3(Ljava/util/Map$Entry;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;
    .locals 4
    .param p0, "it"    # Ljava/util/Map$Entry;

    .line 98
    new-instance v0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/function/BiFunction;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/BiFunction;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;-><init>([Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$unRegisterLogger$10(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .locals 1
    .param p0, "e"    # Ljava/util/Map$Entry;
    .param p1, "it"    # Ljava/lang/String;

    .line 141
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterLogger$11(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .locals 2
    .param p0, "loggers"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 141
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda10;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterRelease$7(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .locals 1
    .param p0, "e"    # Ljava/util/Map$Entry;
    .param p1, "it"    # Ljava/lang/String;

    .line 123
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterRelease$8(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .locals 2
    .param p0, "releases"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 123
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterTransforms$4(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .locals 1
    .param p0, "e"    # Ljava/util/Map$Entry;
    .param p1, "it"    # Ljava/lang/String;

    .line 105
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterTransforms$5(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .locals 2
    .param p0, "transforms"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 105
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->extensionClassMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->transforms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->releases:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->loggers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 150
    return-void
.end method

.method blacklist getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 78
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLog(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 176
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->loggers:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->findAvailableUnaryKey(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->loggers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Function;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 178
    .local v1, "logger":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/util/function/Function<TT;Ljava/lang/String;>;>;"
    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method blacklist getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 74
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isRequireToRelease(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 157
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->releases:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportTransformOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)Z"
        }
    .end annotation

    .line 153
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->transforms:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$findAvailableBinaryKey$15$com-samsung-android-sume-core-buffer-BufferExtensionManager(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z
    .locals 8
    .param p1, "from"    # Ljava/lang/Class;
    .param p2, "to"    # Ljava/lang/Class;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "fromList"    # Ljava/util/List;
    .param p5, "toList"    # Ljava/util/List;
    .param p6, "it"    # Ljava/lang/String;

    .line 211
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "->"

    invoke-virtual {p6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "token":[Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->extensionClassMap:Ljava/util/Map;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 214
    .local v2, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_0

    .line 215
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->extensionClassMap:Ljava/util/Map;

    const/4 v4, 0x1

    aget-object v5, v1, v4

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 218
    .local v3, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_1

    .line 219
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 221
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 222
    sget-object v5, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find alternative for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return v4

    .line 225
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 226
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 228
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_4
    :goto_0
    return v0

    .line 232
    .end local v1    # "token":[Ljava/lang/String;
    .end local v2    # "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 234
    return v0
.end method

.method synthetic blacklist lambda$findAvailableBinaryKey$17$com-samsung-android-sume-core-buffer-BufferExtensionManager(Landroid/util/Pair;Ljava/lang/String;Ljava/util/Map;Landroid/util/Pair;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;
    .locals 6
    .param p1, "it1"    # Landroid/util/Pair;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "registry"    # Ljava/util/Map;
    .param p4, "it2"    # Landroid/util/Pair;

    .line 244
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "first":Ljava/lang/String;
    iget-object v1, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "second":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find 2nd order combinations for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;-><init>([Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;)V

    return-object v2
.end method

.method synthetic blacklist lambda$findAvailableBinaryKey$18$com-samsung-android-sume-core-buffer-BufferExtensionManager(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Landroid/util/Pair;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;
    .locals 2
    .param p1, "toList"    # Ljava/util/List;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "registry"    # Ljava/util/Map;
    .param p4, "it1"    # Landroid/util/Pair;

    .line 253
    nop

    .line 240
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p4}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda6;-><init>(Landroid/util/Pair;)V

    .line 241
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 242
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;Landroid/util/Pair;Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 253
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;

    return-object v0
.end method

.method synthetic blacklist lambda$findAvailableBinaryKey$20$com-samsung-android-sume-core-buffer-BufferExtensionManager(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;
    .locals 2
    .param p1, "fromList"    # Ljava/util/List;
    .param p2, "toList"    # Ljava/util/List;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "registry"    # Ljava/util/Map;
    .param p5, "from"    # Ljava/lang/Class;
    .param p6, "to"    # Ljava/lang/Class;

    .line 256
    nop

    .line 239
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda19;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda20;-><init>()V

    .line 254
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 255
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda21;

    invoke-direct {v1, p5, p6}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda21;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 256
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;

    return-object v0
.end method

.method synthetic blacklist lambda$registerLogger$9$com-samsung-android-sume-core-buffer-BufferExtensionManager(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1
    .param p1, "it"    # Ljava/util/Map$Entry;

    .line 131
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->addToClassMap(Ljava/lang/Class;)V

    .line 132
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$registerReleases$6$com-samsung-android-sume-core-buffer-BufferExtensionManager(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1
    .param p1, "it"    # Ljava/util/Map$Entry;

    .line 113
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->addToClassMap(Ljava/lang/Class;)V

    .line 114
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$registerTransforms$2$com-samsung-android-sume-core-buffer-BufferExtensionManager(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 3
    .param p1, "it"    # Ljava/util/Map$Entry;

    .line 90
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    .line 91
    .local v0, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    .line 93
    .local v1, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->addToClassMap(Ljava/lang/Class;)V

    .line 94
    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->addToClassMap(Ljava/lang/Class;)V

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist registerLogger(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loggers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "*",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;"
        }
    .end annotation

    .line 128
    .local p1, "loggers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/Function<*Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda9;-><init>()V

    .line 129
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 136
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/function/Function<*Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->loggers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 137
    return-object p0
.end method

.method public blacklist registerReleases(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "release"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "*>;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;"
        }
    .end annotation

    .line 110
    .local p1, "release":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/Consumer<*>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda12;-><init>()V

    .line 111
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 118
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/function/Consumer<*>;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->releases:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 119
    return-object p0
.end method

.method public blacklist registerTransforms(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transforms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "**>;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;"
        }
    .end annotation

    .line 87
    .local p1, "transforms":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;Ljava/util/function/BiFunction<Lcom/samsung/android/sume/core/format/MediaFormat;**>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda18;-><init>()V

    .line 88
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 100
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->transforms:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 101
    return-object p0
.end method

.method public blacklist release(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 161
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->releases:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 163
    .local v1, "release":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 167
    return-void

    .line 166
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public blacklist transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "data",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;",
            "Ljava/lang/Class<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 170
    .local p2, "data":Ljava/lang/Object;, "TT;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->transforms:Ljava/util/Map;

    invoke-direct {p0, v0, p3, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->findAvailableBinaryKey(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->transforms:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;

    .line 172
    .local v1, "transform":Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;->apply(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public blacklist unRegisterLogger(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loggers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;"
        }
    .end annotation

    .line 141
    .local p1, "loggers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->loggers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda16;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 142
    return-object p0
.end method

.method public blacklist unRegisterRelease(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releases"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;"
        }
    .end annotation

    .line 123
    .local p1, "releases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->releases:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda22;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 124
    return-object p0
.end method

.method public blacklist unRegisterTransforms(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transforms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;"
        }
    .end annotation

    .line 105
    .local p1, "transforms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->transforms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$$ExternalSyntheticLambda15;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 106
    return-object p0
.end method
