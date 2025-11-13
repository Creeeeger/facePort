.class final Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;
.super Ljava/lang/Object;
.source "BufferExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;
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
.method varargs constructor blacklist <init>([Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;)V
    .locals 2
    .param p1, "transforms"    # [Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transforms"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;->functionList:Ljava/util/List;

    .line 52
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 53
    return-void
.end method

.method varargs constructor blacklist <init>([Ljava/util/function/BiFunction;)V
    .locals 1
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
            "([",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "**>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 46
    .local p1, "transforms":[Ljava/util/function/BiFunction;, "[Ljava/util/function/BiFunction<Lcom/samsung/android/sume/core/format/MediaFormat;**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;->functionList:Ljava/util/List;

    .line 48
    return-void
.end method


# virtual methods
.method blacklist apply(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "u"
        }
    .end annotation

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

    .line 56
    .local p2, "u":Ljava/lang/Object;, "TU;"
    move-object v0, p2

    .line 57
    .local v0, "data":Ljava/lang/Object;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;->functionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 58
    .local v2, "it":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/util/function/BiFunction;

    .line 59
    .local v3, "func":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .end local v2    # "it":Ljava/lang/Object;
    .end local v3    # "func":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-object v0
.end method

.method synthetic blacklist lambda$new$0$com-samsung-android-sume-core-buffer-BufferExtensionManager$TransformFunction(Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;)V
    .locals 2
    .param p1, "it"    # Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;->functionList:Ljava/util/List;

    iget-object v1, p1, Lcom/samsung/android/sume/core/buffer/BufferExtensionManager$TransformFunction;->functionList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
