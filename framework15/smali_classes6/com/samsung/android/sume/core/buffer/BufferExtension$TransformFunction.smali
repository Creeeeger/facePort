.class final Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
.super Ljava/lang/Object;
.source "BufferExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/buffer/BufferExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransformFunction"
.end annotation


# instance fields
.field private final blacklist functionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor blacklist <init>([Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;->functionList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method varargs constructor blacklist <init>([Ljava/util/function/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "**>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;->functionList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method blacklist apply(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TU;)TR;"
        }
    .end annotation

    move-object v0, p2

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->popInternalBufferHandler()Ljava/util/function/Consumer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;->functionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;->functionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/function/BiFunction;

    if-eqz v1, :cond_1

    invoke-static {v4}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->isWrappedTransform(Ljava/util/function/BiFunction;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v4, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method synthetic blacklist lambda$new$0$com-samsung-android-sume-core-buffer-BufferExtension$TransformFunction(Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;->functionList:Ljava/util/List;

    iget-object v1, p1, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;->functionList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
