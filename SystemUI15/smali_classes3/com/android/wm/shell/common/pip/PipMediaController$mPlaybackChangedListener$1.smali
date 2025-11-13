.class public final Lcom/android/wm/shell/common/pip/PipMediaController$mPlaybackChangedListener$1;
.super Landroid/media/session/MediaController$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/pip/PipMediaController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/pip/PipMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController$mPlaybackChangedListener$1;->this$0:Lcom/android/wm/shell/common/pip/PipMediaController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController$mPlaybackChangedListener$1;->this$0:Lcom/android/wm/shell/common/pip/PipMediaController;

    sget v0, Lcom/android/wm/shell/common/pip/PipMediaController;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/wm/shell/common/pip/PipMediaController$notifyMetadataChanged$1;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/pip/PipMediaController$notifyMetadataChanged$1;-><init>(Landroid/media/MediaMetadata;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController$mPlaybackChangedListener$1;->this$0:Lcom/android/wm/shell/common/pip/PipMediaController;

    sget p1, Lcom/android/wm/shell/common/pip/PipMediaController;->$r8$clinit:I

    iget-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/wm/shell/common/pip/PipMediaController$notifyActionsChanged$1;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/pip/PipMediaController$notifyActionsChanged$1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
