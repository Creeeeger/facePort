.class Lcom/samsung/android/sume/core/controller/MediaFilterController$1;
.super Ljava/util/HashMap;
.source "MediaFilterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/controller/MediaFilterController;->run(Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/sume/core/message/Response;
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
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/core/controller/MediaFilterController;

.field final synthetic blacklist val$beginTs:J

.field final synthetic blacklist val$inBuffers:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/controller/MediaFilterController;Ljava/util/List;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$1;->this$0:Lcom/samsung/android/sume/core/controller/MediaFilterController;

    iput-object p2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$1;->val$inBuffers:Ljava/util/List;

    iput-wide p3, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$1;->val$beginTs:J

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$1;->this$0:Lcom/samsung/android/sume/core/controller/MediaFilterController;

    invoke-static {p2}, Lcom/samsung/android/sume/core/controller/MediaFilterController;->access$000(Lcom/samsung/android/sume/core/controller/MediaFilterController;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "id"

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/sume/core/controller/MediaFilterController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$1;->val$inBuffers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/sume/core/controller/MediaFilterController$1$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/samsung/android/sume/core/controller/MediaFilterController$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "contents-list"

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/sume/core/controller/MediaFilterController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide p2, p0, Lcom/samsung/android/sume/core/controller/MediaFilterController$1;->val$beginTs:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "timestampMs"

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/sume/core/controller/MediaFilterController$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "contents-id"

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
