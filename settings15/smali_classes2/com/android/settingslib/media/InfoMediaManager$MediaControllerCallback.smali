.class public final Lcom/android/settingslib/media/InfoMediaManager$MediaControllerCallback;
.super Landroid/media/session/MediaController$Callback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/media/InfoMediaManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/media/InfoMediaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaControllerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaControllerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    iget-object v1, v1, Lcom/android/settingslib/media/InfoMediaManager;->mLastKnownPlaybackInfo:Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControlId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaControllerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    iget-object v1, v1, Lcom/android/settingslib/media/InfoMediaManager;->mLastKnownPlaybackInfo:Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControlId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaControllerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaControllerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    iput-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mLastKnownPlaybackInfo:Landroid/media/session/MediaController$PlaybackInfo;

    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaControllerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    return-void
.end method
