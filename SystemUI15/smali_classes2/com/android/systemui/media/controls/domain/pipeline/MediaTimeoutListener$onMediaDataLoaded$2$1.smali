.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->$key:Ljava/lang/String;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->$key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logDelayedUpdate$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logDelayedUpdate$2;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "MediaTimeout"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->timeoutCallback:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    move-object v5, v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;->$key:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
