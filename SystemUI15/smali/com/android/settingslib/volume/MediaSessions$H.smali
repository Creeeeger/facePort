.class public final Lcom/android/settingslib/volume/MediaSessions$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/volume/MediaSessions;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/volume/MediaSessions;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/volume/MediaSessions$H;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/volume/MediaSessions;Landroid/os/Looper;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/volume/MediaSessions$H;-><init>(Lcom/android/settingslib/volume/MediaSessions;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions$H;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/session/MediaSession$Token;

    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    new-instance v0, Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/android/settingslib/volume/MediaSessions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    sget-boolean p1, Lcom/android/settingslib/volume/D;->BUG:Z

    if-eqz p1, :cond_3

    const-string p1, "onUpdateRemoteSessionListH "

    invoke-static {p1, v2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean p1, p0, Lcom/android/settingslib/volume/MediaSessions;->mInit:Z

    if-nez p1, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions;->mHandler:Lcom/android/settingslib/volume/MediaSessions$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions$H;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaSession$Token;

    iget p1, p1, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/settingslib/volume/MediaSessions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    sget-boolean v0, Lcom/android/settingslib/volume/D;->BUG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "remoteVolumeChangedH "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/settingslib/volume/Util;->AUDIO_MANAGER_FLAGS:[I

    sget-object v6, Lcom/android/settingslib/volume/Util;->AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    invoke-static {p1, v6, v5}, Lcom/android/settingslib/volume/Util;->bitFieldToString(I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions;->mCallbacks:Lcom/android/settingslib/volume/MediaSessions$Callbacks;

    check-cast p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->showForSession(Landroid/media/session/MediaSession$Token;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "onRemoteVolumeChanged"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->addStream(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    sget-object v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->shouldShowUI(I)Z

    move-result p1

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onRemoteVolumeChanged: stream: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " showui? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/session/MediaSession$Token;->getBinder()Landroid/media/session/ISessionController;

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v5, Landroid/media/session/MediaController;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v6, v6, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v0}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v5

    invoke-static {v0, v2, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-$$Nest$mupdateRemoteFixedVolumeSession(Lcom/android/systemui/volume/VolumeDialogControllerImpl;ILandroid/media/session/MediaController$PlaybackInfo;)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result v0

    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_8
    if-eqz v0, :cond_9

    const-string v0, "onRemoteChanged: updatingState"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    :cond_9
    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0, v4, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowRequested(IZI)V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_a
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions$H;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    iget-object p1, p0, Lcom/android/settingslib/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/volume/MediaSessions;->onActiveSessionsUpdatedH(Ljava/util/List;)V

    :cond_b
    :goto_1
    return-void
.end method
