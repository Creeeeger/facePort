.class public final synthetic Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    iput-wide p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda2;->f$1:J

    return-void
.end method


# virtual methods
.method public final onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;

    iget-wide v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession$$ExternalSyntheticLambda2;->f$1:J

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->isReleased()Z

    move-result p0

    iget-object p2, p1, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->TAG:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string p0, "onInitComplete : player released"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "onInitComplete : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;->PLAYER_READY:Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerSession;->setPlayerState(Lcom/android/systemui/wallpaper/engines/video/VideoController$PlayerState;)V

    :goto_0
    return-void
.end method
