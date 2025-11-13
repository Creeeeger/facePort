.class public final Lcom/android/systemui/volume/middleware/DeviceStateController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;


# instance fields
.field public final infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

.field public isCoverClosed:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    check-cast p1, Lcom/android/systemui/volume/VolumeDependency;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    iput-object p1, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/middleware/DeviceStateController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    iget-object v1, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isCaptionEnabled()Z

    move-result p0

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isCaptionEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_1
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSetupWizardComplete()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSetupWizardComplete(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_2
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAllSoundOff()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isAllSoundOff(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_3
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isOrientationChanged()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isOrientationChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isDensityOrFontChanged()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isDensityOrFontChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isDisplayTypeChanged()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isDisplayTypeChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_4
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isStandalone()Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_5
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getSystemTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->systemTimeNow(J)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getZenMode()I

    move-result p0

    invoke-interface {v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isZenModeEnabled(I)Z

    move-result v0

    invoke-interface {v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isZenModePriorityOnly(I)Z

    move-result v2

    invoke-interface {v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isZenModeNone(I)Z

    move-result p0

    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v3, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isZenEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isZenPriorityOnly(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isZenNone(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getSystemTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->systemTimeNow(J)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_7
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isLcdOff()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->isCoverClosed:Z

    if-eqz p0, :cond_2

    :cond_0
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isDexMode()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isVolumeStarEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAodVolumePanel()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_IDLE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getCutoutHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->cutoutHeight(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isMediaDefault()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isMediaDefault(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getTimeoutControls()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->timeOutControls(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getTimeoutControlsText()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->timeOutControlsText(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isKeyguardState()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isShadeLockedState()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isLockscreen(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getCaptionsComponentState(Z)V

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    goto :goto_2

    :pswitch_8
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isCoverClosed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->isCoverClosed:Z

    :cond_5
    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final applyState(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/middleware/DeviceStateController$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/volume/middleware/DeviceStateController;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCaptionEnabled()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setCaptionEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeSafetyWarningDialog()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setSafeVolumeDialogShowing(Z)V

    :goto_0
    return-void
.end method
