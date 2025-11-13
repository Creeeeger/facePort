.class public final synthetic Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->isReleased()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    const-string p1, "onSeekComplete : player released"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    const-string v0, "onSeekComplete"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;->PLAYER_READY:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->setPlayerState(Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;)V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mLock:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->mIsNeverDrawnAtSurface:Z

    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
