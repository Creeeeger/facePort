.class public final Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public _data:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

.field public final _progress:Landroidx/lifecycle/MutableLiveData;

.field public final bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

.field public final callback:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$callback$1;

.field public cancel:Ljava/lang/Runnable;

.field public controller:Landroid/media/session/MediaController;

.field public enabledChangeListener:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$EnabledChangeListener;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public firstMotionEvent:Landroid/view/MotionEvent;

.field public isFalseSeek:Z

.field public lastMotionEvent:Landroid/view/MotionEvent;

.field public listening:Z

.field public logSeek:Lkotlin/jvm/functions/Function0;

.field public playbackState:Landroid/media/session/PlaybackState;

.field public scrubbing:Z

.field public scrubbingChangeListener:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$ScrubbingChangeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/RepeatableExecutor;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    new-instance p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;-><init>(ZZZZLjava/lang/Integer;IZ)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->_data:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iget-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->_data:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$callback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$callback$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->callback:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$callback$1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->listening:Z

    return-void
.end method

.method public static final access$checkPlaybackPosition(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->_data:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    iget v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->duration:I

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-eqz v1, :cond_4

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v6, 0x3

    if-eq v0, v6, :cond_0

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v6, 0x4

    if-eq v0, v6, :cond_0

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_3

    :cond_0
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-lez v0, :cond_3

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v0

    sub-long/2addr v8, v6

    long-to-float v4, v8

    mul-float/2addr v0, v4

    float-to-long v4, v0

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    add-long/2addr v0, v4

    cmp-long v4, v2, v10

    if-ltz v4, :cond_1

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    cmp-long v2, v0, v10

    if-gez v2, :cond_2

    move-wide v2, v10

    goto :goto_0

    :cond_2
    move-wide v2, v0

    :goto_0
    move-wide v4, v2

    :cond_3
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->_data:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->_data:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    const/16 v2, 0x6f

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;ZLjava/lang/Integer;ZI)Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->set_data(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;)V

    :cond_5
    return-void
.end method

.method public static final access$setScrubbing(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->scrubbing:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->scrubbing:Z

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->checkIfPollingNeeded()V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->scrubbingChangeListener:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$ScrubbingChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$ScrubbingChangeListener;->onScrubbingChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->_data:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    const/4 v1, 0x0

    const/16 v2, 0x77

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v3, v2}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;ZLjava/lang/Integer;ZI)Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->set_data(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;)V

    :cond_1
    return-void
.end method

.method public static synthetic getFirstMotionEvent$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLastMotionEvent$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final checkIfPollingNeeded()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->listening:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->scrubbing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    if-nez v0, :cond_6

    const-string v0, "SeekBarPollingPosition"

    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$checkIfPollingNeeded$cancelPolling$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$checkIfPollingNeeded$cancelPolling$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;)V

    const-wide/16 v6, 0x64

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    const-wide/16 v4, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/util/concurrency/RepeatableExecutor;->executeRepeatedly(Ljava/lang/Runnable;JJ)Ljava/lang/Runnable;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$checkIfPollingNeeded$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$checkIfPollingNeeded$1;-><init>(Ljava/lang/Runnable;I)V

    iput-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_5
    iput-object v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    :cond_6
    :goto_2
    return-void
.end method

.method public final setController(Landroid/media/session/MediaController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    :cond_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->callback:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$callback$1;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_3
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    :cond_4
    return-void
.end method

.method public final set_data(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->_data:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    iget-boolean v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->enabled:Z

    iget-boolean v1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->enabled:Z

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->_data:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->enabledChangeListener:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$EnabledChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$EnabledChangeListener;->onEnabledChanged(Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateController(Landroid/media/session/MediaController;)V
    .locals 12

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->setController(Landroid/media/session/MediaController;)V

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    move-wide v4, v2

    :goto_2
    const-wide/16 v6, 0x100

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    move-object v9, v0

    if-eqz p1, :cond_5

    const-string v0, "android.media.metadata.DURATION"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    move v10, p1

    goto :goto_4

    :cond_5
    move v10, v3

    :goto_4
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    goto :goto_5

    :cond_6
    move p1, v3

    :goto_5
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v7

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    if-gtz v10, :cond_8

    goto :goto_6

    :cond_8
    move v5, v2

    goto :goto_7

    :cond_9
    :goto_6
    move v5, v3

    :goto_7
    new-instance p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    iget-boolean v8, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->scrubbing:Z

    iget-boolean v11, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->listening:Z

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;-><init>(ZZZZLjava/lang/Integer;IZ)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->set_data(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->checkIfPollingNeeded()V

    return-void
.end method
