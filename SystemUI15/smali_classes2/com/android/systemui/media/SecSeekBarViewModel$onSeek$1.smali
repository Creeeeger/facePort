.class public final Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $position:J

.field public final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iput-wide p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->$position:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iget-boolean v1, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->isFalseSeek:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0, v2}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setScrubbing(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-static {p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$checkPlaybackPosition(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->$position:J

    invoke-virtual {v0, v3, v4}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    invoke-static {p0, v2}, Lcom/android/systemui/media/SecSeekBarViewModel;->access$setScrubbing(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    :goto_0
    return-void
.end method
