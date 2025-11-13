.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;
.super Landroid/media/session/MediaController$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public cancellation:Ljava/lang/Runnable;

.field public destroyed:Z

.field public expiration:J

.field public key:Ljava/lang/String;

.field public lastState:Landroid/media/session/PlaybackState;

.field public mediaController:Landroid/media/session/MediaController;

.field public resumption:Ljava/lang/Boolean;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/controls/shared/model/MediaData;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->expiration:J

    invoke-virtual {p0, p3}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->setMediaData(Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    return-void
.end method


# virtual methods
.method public final doTimeout()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v4, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logTimeout$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logTimeout$2;

    const-string v5, "MediaTimeout"

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v1, v5, v3, v4, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v2, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->expiration:J

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->timeoutCallback:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final expireMediaTimeout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object v2, v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v4, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logTimeoutCancelled$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logTimeoutCancelled$2;

    const-string v5, "MediaTimeout"

    iget-object v2, v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v5, v3, v4, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, v4, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->expiration:J

    iput-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    return-void
.end method

.method public final isPlaying$1()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->lastState:Landroid/media/session/PlaybackState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->processState(Landroid/media/session/PlaybackState;ZLjava/lang/Boolean;)V

    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logSessionDestroyed$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logSessionDestroyed$2;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "MediaTimeout"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->sessionCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    move-object v5, v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final processState(Landroid/media/session/PlaybackState;ZLjava/lang/Boolean;)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logPlaybackState$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logPlaybackState$2;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "MediaTimeout"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v5

    :goto_0
    iput-object v1, v3, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    move-result v3

    if-ne v2, v3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->lastState:Landroid/media/session/PlaybackState;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v5

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v5

    :goto_3
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object v6, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->lastState:Landroid/media/session/PlaybackState;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object v6, v5

    :goto_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object v7, v5

    :goto_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v6, v7, :cond_6

    goto/16 :goto_8

    :cond_6
    if-eqz v6, :cond_f

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-eq v3, v8, :cond_7

    goto/16 :goto_9

    :cond_7
    check-cast v6, Ljava/lang/Iterable;

    new-instance v3, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v3, v6}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    check-cast v7, Ljava/lang/Iterable;

    new-instance v6, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v6, v7}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v3, v6}, Lkotlin/sequences/SequencesKt___SequencesKt;->zip(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/MergingSequence;

    move-result-object v3

    new-instance v6, Lkotlin/sequences/MergingSequence$iterator$1;

    invoke-direct {v6, v3}, Lkotlin/sequences/MergingSequence$iterator$1;-><init>(Lkotlin/sequences/MergingSequence;)V

    :cond_8
    invoke-virtual {v6}, Lkotlin/sequences/MergingSequence$iterator$1;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v6}, Lkotlin/sequences/MergingSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v7}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v7}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v7}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v8

    invoke-virtual {v3}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v9

    if-eq v8, v9, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v7}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-nez v8, :cond_a

    move v8, v0

    goto :goto_6

    :cond_a
    move v8, v1

    :goto_6
    invoke-virtual {v3}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-nez v9, :cond_b

    move v9, v0

    goto :goto_7

    :cond_b
    move v9, v1

    :goto_7
    if-eq v8, v9, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {v7}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v7}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_9

    :cond_e
    :goto_8
    move v1, v0

    :cond_f
    :goto_9
    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v0, v3

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->lastState:Landroid/media/session/PlaybackState;

    if-eqz v1, :cond_10

    if-nez v2, :cond_12

    :cond_10
    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    new-instance v7, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logStateCallback$2;

    invoke-direct {v7, v3}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logStateCallback$2;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v1, v4, v6, v7, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v3, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->stateCallback:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_11

    goto :goto_a

    :cond_11
    move-object v1, v5

    :goto_a
    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    if-eqz v2, :cond_13

    if-nez v0, :cond_13

    return-void

    :cond_13
    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_16

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object p2, p2, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v8, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logScheduleTimeout$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logScheduleTimeout$2;

    iget-object p2, p2, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p2, v4, v7, v8, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v3, v9, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean v1, v9, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v6, v9, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {p2, v8}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    if-eqz p2, :cond_14

    if-nez v0, :cond_14

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object p1, p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logCancelIgnored$2;->INSTANCE:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger$logCancelIgnored$2;

    iget-object p1, p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p1, v4, v7, p2, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p0, p3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void

    :cond_14
    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PLAYBACK STATE CHANGED - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->expireMediaTimeout(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    sget-wide p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListenerKt;->RESUME_MEDIA_TIMEOUT:J

    goto :goto_b

    :cond_15
    sget-wide p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListenerKt;->PAUSED_MEDIA_TIMEOUT:J

    :goto_b
    iget-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object p3, p3, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p3}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->expiration:J

    iget-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object p3, p3, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener$processState$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener$processState$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;)V

    invoke-interface {p3, v0, p1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    goto :goto_c

    :cond_16
    iget-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playback started - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->expireMediaTimeout(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_18

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object p1, p1, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->timeoutCallback:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_17

    move-object v5, p1

    :cond_17
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    :goto_c
    return-void
.end method

.method public final setMediaData(Lcom/android/systemui/media/controls/shared/model/MediaData;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;

    iget-object v3, v3, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;->mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    invoke-virtual {v3, v1}, Lcom/android/systemui/media/controls/util/MediaControllerFactory;->create(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    :cond_3
    iget-boolean p1, p1, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumption:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener$PlaybackStateListener;->processState(Landroid/media/session/PlaybackState;ZLjava/lang/Boolean;)V

    return-void
.end method
