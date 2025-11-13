.class Lcom/samsung/android/sume/core/graph/GraphBase$1;
.super Ljava/util/HashMap;
.source "GraphBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/graph/GraphBase;->runBatch(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/core/graph/GraphBase;

.field final synthetic blacklist val$obuf:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/GraphBase;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/graph/GraphBase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$obuf"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase$1;, "Lcom/samsung/android/sume/core/graph/GraphBase$1;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphBase$1;->this$0:Lcom/samsung/android/sume/core/graph/GraphBase;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/GraphBase$1;->val$obuf:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v0, "contents-id"

    invoke-interface {p2, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/graph/GraphBase$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getCols()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cols"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/graph/GraphBase$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getRows()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "rows"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/graph/GraphBase$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "rotation-degrees"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/sume/core/graph/GraphBase$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    return-void
.end method
