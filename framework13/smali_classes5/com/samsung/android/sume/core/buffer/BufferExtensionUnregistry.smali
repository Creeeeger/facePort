.class public Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;
.super Ljava/lang/Object;
.source "BufferExtensionUnregistry.java"


# instance fields
.field private final blacklist loggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist releases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist transforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;->transforms:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;->releases:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;->loggers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist removeLogger(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;
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
            "TT;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;"
        }
    .end annotation

    .line 24
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;->loggers:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    return-object p0
.end method

.method public blacklist removeRelease(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;
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
            "TT;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;"
        }
    .end annotation

    .line 14
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;->releases:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    return-object p0
.end method

.method public blacklist removeTransform(Ljava/lang/Class;Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;
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
            "Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;"
        }
    .end annotation

    .line 19
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;->transforms:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-object p0
.end method

.method public blacklist unregister()V
    .locals 2

    .line 29
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;->transforms:Ljava/util/List;

    .line 30
    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->unRegisterTransforms(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;->loggers:Ljava/util/List;

    .line 31
    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->unRegisterLogger(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionUnregistry;->releases:Ljava/util/List;

    .line 32
    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->unRegisterRelease(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;

    .line 33
    return-void
.end method
