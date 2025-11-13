.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozingChanged(Z)V
    .locals 8

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    iget-wide v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->expiration:J

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gtz v1, :cond_0

    const-string/jumbo v1, "timeout happened while dozing"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->expireMediaTimeout(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->doTimeout()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->recommendationListeners:Ljava/util/Map;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->cancellation:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->expiration:J

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logTimeoutCancelled$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logTimeoutCancelled$2;

    const-string v6, "MediaTimeout"

    iget-object v3, v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v4, v5, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v2, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    const-string v2, "Timed out while dozing"

    iput-object v2, v5, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->doTimeout()V

    goto :goto_1

    :cond_3
    return-void
.end method
