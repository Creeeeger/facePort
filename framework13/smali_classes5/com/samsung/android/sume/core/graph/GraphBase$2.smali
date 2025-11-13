.class Lcom/samsung/android/sume/core/graph/GraphBase$2;
.super Ljava/util/HashMap;
.source "GraphBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/graph/GraphBase;->lambda$runOneByOne$1$com-samsung-android-sume-core-graph-GraphBase(Ljava/util/List;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
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

.field final synthetic blacklist val$beginTs:J

.field final synthetic blacklist val$endTs:J

.field final synthetic blacklist val$obuf:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/GraphBase;Lcom/samsung/android/sume/core/buffer/MediaBuffer;JJ)V
    .locals 4
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/graph/GraphBase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$obuf",
            "val$beginTs",
            "val$endTs"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase$2;, "Lcom/samsung/android/sume/core/graph/GraphBase$2;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/GraphBase$2;->this$0:Lcom/samsung/android/sume/core/graph/GraphBase;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/GraphBase$2;->val$obuf:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    iput-wide p3, p0, Lcom/samsung/android/sume/core/graph/GraphBase$2;->val$beginTs:J

    iput-wide p5, p0, Lcom/samsung/android/sume/core/graph/GraphBase$2;->val$endTs:J

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 107
    const-string v0, "contents-id"

    invoke-interface {p2, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/graph/GraphBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getCols()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "width"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/graph/GraphBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getRows()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/graph/GraphBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string/jumbo p4, "start-time-ms"

    invoke-virtual {p0, p4, p3}, Lcom/samsung/android/sume/core/graph/GraphBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "end-time-ms"

    invoke-virtual {p0, p4, p3}, Lcom/samsung/android/sume/core/graph/GraphBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo p3, "rotation-degrees"

    const-string p4, "last-video-timestamp-us"

    const-string p5, "last-audio-timestamp-us"

    filled-new-array {p3, p4, p5}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p3

    new-instance p6, Lcom/samsung/android/sume/core/graph/GraphBase$2$$ExternalSyntheticLambda0;

    invoke-direct {p6, p2}, Lcom/samsung/android/sume/core/graph/GraphBase$2$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 114
    invoke-interface {p3, p6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    new-instance p6, Lcom/samsung/android/sume/core/graph/GraphBase$2$$ExternalSyntheticLambda1;

    invoke-direct {p6, p0, p2}, Lcom/samsung/android/sume/core/graph/GraphBase$2$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/graph/GraphBase$2;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 115
    invoke-interface {p3, p6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 117
    invoke-virtual {p0, p4}, Lcom/samsung/android/sume/core/graph/GraphBase$2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    const-wide/16 p3, -0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 118
    .local v0, "videoDurationUs":J
    invoke-virtual {p0, p5}, Lcom/samsung/android/sume/core/graph/GraphBase$2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 121
    .local p2, "audioDurationUs":J
    cmp-long p4, v0, p2

    const-wide/16 p5, 0x1

    const-wide/16 v2, 0x3e8

    if-lez p4, :cond_0

    .line 122
    div-long v2, v0, v2

    add-long/2addr v2, p5

    .local v2, "durationMs":J
    goto :goto_0

    .line 124
    .end local v2    # "durationMs":J
    :cond_0
    div-long v2, p2, v2

    add-long/2addr v2, p5

    .line 126
    .restart local v2    # "durationMs":J
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "duration"

    invoke-virtual {p0, p5, p4}, Lcom/samsung/android/sume/core/graph/GraphBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v0    # "videoDurationUs":J
    .end local v2    # "durationMs":J
    .end local p2    # "audioDurationUs":J
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)Z
    .locals 1
    .param p0, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p1, "it"    # Ljava/lang/String;

    .line 114
    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method synthetic blacklist lambda$new$1$com-samsung-android-sume-core-graph-GraphBase$2(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/String;)V
    .locals 1
    .param p1, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "it"    # Ljava/lang/String;

    .line 115
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBase$2;, "Lcom/samsung/android/sume/core/graph/GraphBase$2;"
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/sume/core/format/MediaFormat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/sume/core/graph/GraphBase$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
