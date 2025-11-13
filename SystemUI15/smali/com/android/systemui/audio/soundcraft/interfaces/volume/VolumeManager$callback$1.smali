.class public final Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$callback$1;
.super Landroid/media/session/MediaController$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$callback$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPlaybackStateChanged state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoundCraft.VolumeManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$callback$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    iget-boolean p1, p1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isRemoteStreamPlaying:Z

    const/4 v1, 0x3

    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_3

    return-void

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$callback$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isRemoteStreamPlaying:Z

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$callback$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->isRemoteStreamPlaying:Z

    :goto_3
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager$callback$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->updateCurrentVolume()V

    return-void
.end method
