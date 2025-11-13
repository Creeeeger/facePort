.class public final Lcom/android/systemui/doze/AODMachine;
.super Lcom/android/systemui/doze/DozeMachine;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAOD$Callback;


# instance fields
.field public mAODScreenBrightness:Lcom/android/systemui/doze/AODScreenBrightness;

.field public mAODUi:Lcom/android/systemui/doze/AODUi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/doze/DozeMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;Lcom/android/systemui/settings/UserTracker;)V

    return-void
.end method


# virtual methods
.method public final dozeTimeTick()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/doze/AODMachine;->getAODUi()Lcom/android/systemui/doze/AODUi;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dozeTimeTick()V

    new-instance v0, Lcom/android/systemui/doze/AODUi$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final getAODDozeBrightness()Lcom/android/systemui/doze/AODScreenBrightness;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine;->mAODScreenBrightness:Lcom/android/systemui/doze/AODScreenBrightness;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    instance-of v4, v3, Lcom/android/systemui/doze/AODScreenBrightness;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/systemui/doze/AODScreenBrightness;

    iput-object v3, p0, Lcom/android/systemui/doze/AODMachine;->mAODScreenBrightness:Lcom/android/systemui/doze/AODScreenBrightness;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/doze/AODMachine;->mAODScreenBrightness:Lcom/android/systemui/doze/AODScreenBrightness;

    return-object p0
.end method

.method public final getAODUi()Lcom/android/systemui/doze/AODUi;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/doze/AODMachine;->mAODUi:Lcom/android/systemui/doze/AODUi;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    instance-of v4, v3, Lcom/android/systemui/doze/AODUi;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/systemui/doze/AODUi;

    iput-object v3, p0, Lcom/android/systemui/doze/AODMachine;->mAODUi:Lcom/android/systemui/doze/AODUi;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/doze/AODMachine;->mAODUi:Lcom/android/systemui/doze/AODUi;

    return-object p0
.end method

.method public final onFinishMOD(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mStateBeforeMOD:Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_0
    return-void
.end method

.method public final onRequestMOD(I)V
    .locals 1

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    iget v0, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    return-void
.end method

.method public final onRequestState(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_DISPLAY_STATE_ON:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    goto :goto_0

    :pswitch_6
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onSendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onUpdateDozeBrightness(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/doze/AODMachine;->getAODDozeBrightness()Lcom/android/systemui/doze/AODScreenBrightness;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/doze/AODScreenBrightness;->updateDozeBrightness(III)V

    :cond_0
    return-void
.end method

.method public final onUpdateDozeBrightness(III)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_HYSTERESIS_BRIGHTNESS:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/doze/AODMachine;->getAODDozeBrightness()Lcom/android/systemui/doze/AODScreenBrightness;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/doze/AODScreenBrightness;->updateDozeBrightness(III)V

    :cond_0
    return-void
.end method

.method public final onUpdateWindowLayoutParams()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/doze/AODMachine;->getAODUi()Lcom/android/systemui/doze/AODUi;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_0
    return-void
.end method
