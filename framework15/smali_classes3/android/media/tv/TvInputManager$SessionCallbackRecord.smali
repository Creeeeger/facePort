.class final Landroid/media/tv/TvInputManager$SessionCallbackRecord;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionCallbackRecord"
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mSession:Landroid/media/tv/TvInputManager$Session;

.field private final greylist-max-o mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method blacklist postAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$Session;->-$$Nest$fgetmIAppNotificationEnabled(Landroid/media/tv/TvInputManager$Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$30;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$30;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/AdBuffer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method blacklist postAdResponse(Landroid/media/tv/AdResponse;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$Session;->-$$Nest$fgetmIAppNotificationEnabled(Landroid/media/tv/TvInputManager$Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$29;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$29;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/AdResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method blacklist postAitInfoUpdated(Landroid/media/tv/AitInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$19;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$19;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/AitInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postAudioPresentationSelected(II)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postAudioPresentationsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$4;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postAvailableSpeeds([F)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$23;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$23;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;[F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$Session;->-$$Nest$fgetmIAppNotificationEnabled(Landroid/media/tv/TvInputManager$Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$28;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$28;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/BroadcastInfoResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method greylist-max-o postChannelRetuned(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$3;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$3;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postContentAllowed()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;

    invoke-direct {v1, p0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$12;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postContentBlocked(Landroid/media/tv/TvContentRating;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$13;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$13;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/TvContentRating;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postCueingMessageAvailability(Z)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$21;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$21;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postError(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$27;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$27;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postLayoutSurface(IIII)V
    .locals 8

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;IIII)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postRecordingStopped(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$26;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$26;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 2

    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/TvInputManager$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$15;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$15;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postSessionReleased()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;

    invoke-direct {v1, p0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postSignalStrength(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$20;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$20;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postTimeShiftCurrentPositionChanged(J)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$18;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$18;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postTimeShiftMode(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$22;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$22;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postTimeShiftStartPositionChanged(J)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$17;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$17;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postTimeShiftStatusChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$16;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$16;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postTrackSelected(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$7;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$7;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postTracksChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$6;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$6;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postTuned(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$24;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$24;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$31;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$31;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postTvMessage(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$25;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$25;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postVideoAvailable()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$9;

    invoke-direct {v1, p0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$9;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist postVideoFreezeUpdated(Z)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postVideoSizeChanged(II)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$8;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$8;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method greylist-max-o postVideoUnavailable(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;-><init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
