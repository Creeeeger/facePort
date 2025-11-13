.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public cancellation:Ljava/lang/Runnable;

.field public expiration:J

.field public final key:Ljava/lang/String;

.field public final recommendationData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->key:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->expiration:J

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->recommendationData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-wide v2, p3, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->expiryTimeMs:J

    cmp-long p2, v2, v0

    if-eqz p2, :cond_1

    iget-wide p2, p3, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    sub-long/2addr v2, p2

    iget-object p2, p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logRecommendationTimeoutScheduled$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logRecommendationTimeoutScheduled$2;

    const/4 v1, 0x0

    iget-object p2, p2, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "MediaTimeout"

    invoke-virtual {p2, v4, p3, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->key:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-wide v2, v0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    invoke-virtual {p2, p3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->cancellation:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    new-instance p2, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener$processUpdate$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener$processUpdate$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;)V

    iget-object p1, p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p1, p2, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->cancellation:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->recommendationData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-wide p1, p1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->expiryTimeMs:J

    iput-wide p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->expiration:J

    :cond_1
    return-void
.end method


# virtual methods
.method public final doTimeout()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->cancellation:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->cancellation:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object v2, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logTimeout$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logTimeout$2;

    const-string v6, "MediaTimeout"

    iget-object v2, v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v6, v4, v5, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v3, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$RecommendationListener;->expiration:J

    iget-object p0, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->timeoutCallback:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_1

    move-object v0, p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v3, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
