.class public Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;
.super Ljava/lang/Object;
.source "BufferExtensionRegistry.java"


# instance fields
.field private final blacklist loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
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
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist transforms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;->transforms:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;->releases:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;->loggers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist addBufferStatusLogger(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "logger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;"
        }
    .end annotation

    .line 30
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "logger":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;->loggers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object p0
.end method

.method public blacklist addRelease(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "restore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;"
        }
    .end annotation

    .line 20
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "restore":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;->releases:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-object p0
.end method

.method public blacklist addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "mapper"
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
            "TR;>;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;TR;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;"
        }
    .end annotation

    .line 25
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p3, "mapper":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/samsung/android/sume/core/format/MediaFormat;TT;TR;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;->transforms:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-object p0
.end method

.method public blacklist register()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;->transforms:Ljava/util/Map;

    .line 36
    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->registerTransforms(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;->loggers:Ljava/util/Map;

    .line 37
    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->registerLogger(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionRegistry;->releases:Ljava/util/Map;

    .line 38
    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->registerReleases(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    .line 39
    return-void
.end method
