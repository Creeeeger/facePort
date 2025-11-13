.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    const-string v2, "onSetStreamVolumeDualAudioW "

    const-string v3, " level="

    const-string v4, " btDeviceAddress="

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setStreamVolume(IILjava/lang/String;)V

    goto/16 :goto_9

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowVolumeLimiterToast()V

    goto/16 :goto_9

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCaptioningManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/CaptioningManager;->setSystemAudioCaptioningEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isSystemAudioCaptioningEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onCaptionEnabledStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_9

    :cond_1
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string p1, "onGetCaptionsEnabledStateW(), null captioningManager"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCaptioningManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isSystemAudioCaptioningEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onCaptionEnabledStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_9

    :cond_2
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string p1, "onGetCaptionsEnabledStateW(), null captioningManager"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowCsdWarning(II)V

    goto/16 :goto_9

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCaptioningManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isSystemAudioCaptioningUiEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_9

    :cond_3
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string p1, "onGetCaptionsComponentStateW(), null captioningManager"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    goto/16 :goto_9

    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowSafetyWarning:Z

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowSafetyWarning(I)V

    goto/16 :goto_9

    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    sget-object p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    iget-object p0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserActivityListener:Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;

    if-eqz p0, :cond_4

    check-cast p0, Lcom/android/systemui/volume/VolumeDialogComponent;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    :cond_4
    monitor-exit v0

    goto/16 :goto_9

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v3, v5

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    invoke-virtual {p1, v0, v3}, Landroid/media/AudioManager;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    if-nez v3, :cond_1a

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    goto/16 :goto_9

    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    goto/16 :goto_9

    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string v3, "onSetStreamVolume "

    const-string v6, " level="

    invoke-static {v0, p1, v3, v6, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-lt v0, v2, :cond_c

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/media/session/MediaSession$Token;

    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-nez v4, :cond_9

    sget-object p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setStreamVolume: No token found for stream: "

    invoke-static {v0, p1, p0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_9
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->showForSession(Landroid/media/session/MediaSession$Token;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions;->mRecords:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;

    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setVolume: No record found for token "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_a
    sget-boolean v1, Lcom/android/settingslib/volume/D;->BUG:Z

    if-eqz v1, :cond_b

    const-string v1, "Setting level to "

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    invoke-virtual {p0, p1, v5}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    goto/16 :goto_9

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_c
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setStreamVolume(IILjava/lang/String;)V

    goto/16 :goto_9

    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConfigurationChanged()V

    goto/16 :goto_9

    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onLayoutDirectionChanged(I)V

    goto/16 :goto_9

    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_d

    goto :goto_3

    :cond_d
    move v3, v5

    :goto_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    if-eqz v3, :cond_e

    const/16 v2, -0x64

    :cond_e
    invoke-virtual {p0, v0, v2, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto/16 :goto_9

    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/notification/Condition;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-eqz p1, :cond_f

    iget-object v4, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :cond_f
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v4, p1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-string v0, "onSetZenModeW "

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1, v4, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_11
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_9

    :cond_11
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto/16 :goto_9

    :pswitch_12
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getLastAudibleStreamVolume(I)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamMinVolume(I)I

    move-result v6

    iput v6, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamMaxVolume(I)I

    move-result v6

    iput v6, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    const/16 v4, 0x14

    const/16 v6, 0x16

    const/16 v7, 0x15

    const/16 v8, 0x17

    if-eq v2, v4, :cond_15

    if-ne v2, v8, :cond_12

    goto :goto_6

    :cond_12
    if-eq v2, v7, :cond_14

    if-ne v2, v6, :cond_13

    goto :goto_5

    :cond_13
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    goto :goto_7

    :cond_14
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v4

    goto :goto_7

    :cond_15
    :goto_6
    move v4, v5

    :goto_7
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamMuteW(IZ)Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v4

    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v9, v2}, Landroid/media/AudioManager;->isStreamMutableByUi(I)Z

    move-result v9

    iput-boolean v9, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    sget-object v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->nameRes:Ljava/lang/String;

    goto :goto_4

    :cond_16
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerMode:Lcom/android/systemui/util/RingerModeLiveData;

    invoke-virtual {p1}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v2, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    if-ne v0, v2, :cond_17

    goto :goto_8

    :cond_17
    if-ne v0, v3, :cond_18

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVibrating:Z

    if-nez v2, :cond_18

    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVibrating:Z

    new-instance v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v3, 0x320

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    invoke-virtual {v5, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    iput v0, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0xc

    invoke-static {v0, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenModeW()Z

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateZenConfig()Z

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    goto :goto_9

    :pswitch_13
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onDismissRequested(I)V

    goto :goto_9

    :pswitch_14
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v0, v1, :cond_19

    const/high16 v1, 0x400000

    and-int/2addr v1, p1

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVolumeDialogShowing:Z

    if-eqz v1, :cond_19

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSmartViewFlag:I

    goto :goto_9

    :cond_19
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    sget p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->FLAG_SMART_VIEW_NONE:I

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSmartViewFlag:I

    :cond_1a
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
