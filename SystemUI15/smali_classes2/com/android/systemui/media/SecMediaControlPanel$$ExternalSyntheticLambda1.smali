.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;

.field public final synthetic f$1:Landroid/media/session/MediaController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$1:Landroid/media/session/MediaController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;->f$1:Landroid/media/session/MediaController;

    iget-object v0, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->setController(Landroid/media/session/MediaController;)V

    iget-object p0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    iput-object p0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    iget-object p0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    iget-object v2, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v5

    goto :goto_2

    :cond_2
    move-wide v5, v3

    :goto_2
    const-wide/16 v7, 0x100

    and-long/2addr v5, v7

    cmp-long v2, v5, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    move v7, v3

    goto :goto_3

    :cond_3
    move v7, v4

    :goto_3
    iget-object v2, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_4
    move-object v10, v1

    if-eqz p0, :cond_5

    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int p0, v1

    move v11, p0

    goto :goto_4

    :cond_5
    move v11, v4

    :goto_4
    iget-object p0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    goto :goto_5

    :cond_6
    move p0, v4

    :goto_5
    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v8

    iget-object p0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    if-nez p0, :cond_7

    goto :goto_6

    :cond_7
    if-gtz v11, :cond_8

    goto :goto_6

    :cond_8
    move v6, v3

    goto :goto_7

    :cond_9
    :goto_6
    move v6, v4

    :goto_7
    new-instance p0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    iget-boolean v9, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->scrubbing:Z

    iget-boolean v12, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->listening:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;-><init>(ZZZZLjava/lang/Integer;IZ)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->set_data(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V

    invoke-virtual {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->checkIfPollingNeeded()V

    return-void
.end method
