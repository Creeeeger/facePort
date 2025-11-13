.class public final synthetic Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    packed-switch v1, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget p1, p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceInteractive:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput-boolean p1, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->aodEnabled:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    :cond_2
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsMusicShareEnabled:Z

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsBudsTogetherEnabled:Z

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamMuteW(IZ)Z

    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVolumeDialogShowing:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSmartViewFlag:I

    sget v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->FLAG_SMART_VIEW_NONE:I

    if-eq p1, v2, :cond_4

    move v0, p1

    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isSmartViewEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    :cond_5
    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAEnabled:Ljava/lang/Boolean;

    return-void

    :pswitch_4
    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconServerUtils;

    sget-object v1, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils;->FILE_PATH_ROOT:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v0, v4, v2}, Lcom/samsung/android/settingslib/bluetooth/scsp/ScspUtils$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Collection;Landroid/os/Handler;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Ljava/lang/Boolean;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
