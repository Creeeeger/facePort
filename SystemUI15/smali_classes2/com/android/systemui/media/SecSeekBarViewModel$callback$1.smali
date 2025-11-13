.class public final Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;
.super Landroid/media/session/MediaController$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iput-object p1, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iget-object v1, v1, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->checkIfPollingNeeded()V

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/media/session/PlaybackState;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    goto :goto_1

    :cond_4
    move-wide v4, v2

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x5dc

    cmp-long p1, v4, v6

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    if-ne p1, v4, :cond_6

    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long p1, v2, v6

    if-gez p1, :cond_6

    iput-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    goto/16 :goto_6

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2

    :cond_7
    move-object p1, v1

    :goto_2
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :cond_8
    move-object v4, v1

    :goto_3
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_4

    :cond_9
    move-object v6, v1

    :goto_4
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_a
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "last position : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", after position : "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", last state : "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", after state : "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " last update : "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " after update : "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " last speed : "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " after speed : "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CapsuleValue"

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    new-instance p1, Lcom/android/systemui/media/SecSeekBarViewModel$checkIfCapsuleUpdateNeeded$1;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/media/SecSeekBarViewModel$checkIfCapsuleUpdateNeeded$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;Landroid/media/session/PlaybackState;)V

    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/android/systemui/media/SecSeekBarViewModel$checkIfCapsuleUpdateNeeded$2;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/media/SecSeekBarViewModel$checkIfCapsuleUpdateNeeded$2;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;Landroid/media/session/PlaybackState;)V

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_b
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
