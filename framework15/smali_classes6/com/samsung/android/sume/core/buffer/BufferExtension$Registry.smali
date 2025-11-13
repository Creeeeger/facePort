.class public Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
.super Ljava/lang/Object;
.source "BufferExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/buffer/BufferExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Registry"
.end annotation


# instance fields
.field private final blacklist allocMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist deallocMap:Ljava/util/Map;
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

.field private final blacklist describeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "*",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist stringfyMap:Ljava/util/Map;
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

.field private final blacklist transformMap:Ljava/util/Map;
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

.field private final blacklist wrappedTransformList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->describeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->allocMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->deallocMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->transformMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->stringfyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->wrappedTransformList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/BufferExtension$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addAlloc(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "*>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->allocMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist addDealloc(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->deallocMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist addDescribe(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->describeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist addStringfy(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
    .locals 1
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
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->stringfyMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
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
            "TR;>;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;TR;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->transformMap:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist addWrappedTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
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
            "TR;>;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;TR;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->transformMap:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->wrappedTransformList:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method blacklist getAlloc()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->allocMap:Ljava/util/Map;

    return-object v0
.end method

.method blacklist getDealloc()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->deallocMap:Ljava/util/Map;

    return-object v0
.end method

.method blacklist getDescribe()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "*",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->describeMap:Ljava/util/Map;

    return-object v0
.end method

.method blacklist getStringfy()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "*",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->stringfyMap:Ljava/util/Map;

    return-object v0
.end method

.method blacklist getTransform()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->transformMap:Ljava/util/Map;

    return-object v0
.end method

.method blacklist getWrappedTransform()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->wrappedTransformList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist register()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->describeMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$300(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->allocMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$400(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->deallocMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$500(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->transformMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$600(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->wrappedTransformList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$700(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->stringfyMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$800(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    return-void
.end method
