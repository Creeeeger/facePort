.class public Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;
.super Ljava/lang/Object;
.source "BufferExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/buffer/BufferExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unregistry"
.end annotation


# instance fields
.field private final blacklist allocList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist deallocList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist describeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist stringfyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist transformList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->describeList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->allocList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->deallocList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->transformList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->stringfyList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/BufferExtension$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist removeAlloc(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->allocList:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$900(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist removeDealloc(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->deallocList:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$900(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist removeDescribe(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->describeList:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$900(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist removeStringfy(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->stringfyList:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$900(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist removeTransform(Ljava/lang/Class;Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;
    .locals 2
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
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->transformList:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$1000(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist unregister()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->describeList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$1100(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->allocList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$1200(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->deallocList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$1300(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->transformList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$1400(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;->stringfyList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$1500(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    return-void
.end method
