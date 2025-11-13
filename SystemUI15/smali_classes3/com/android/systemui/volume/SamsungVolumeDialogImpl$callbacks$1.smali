.class public final Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_ACCESSIBILITY_MODE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isShowA11yStream(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public final onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CAPTION_COMPONENT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isCaptionComponentEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public final onCaptionEnabledStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public final onConfigurationChanged()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public final onDismissRequested(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_DISMISS_REQUESTED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public final onKeyEvent(ZZ)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_KEY_EVENT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isKeyDown(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isVibrating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public final onLayoutDirectionChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPlaySound(IZ)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromKey(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->activeStream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public final onPlaySound(IZI)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromKey(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->activeStream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->volumeDirection(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public final onScreenOff()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SCREEN_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public final onShowCsdWarning(II)V
    .locals 0

    return-void
.end method

.method public final onShowRequested(IZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_PANEL_SHOW:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public final onShowSafetyWarning(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SHOW_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SHOW_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    :goto_0
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    invoke-direct {v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->flags(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public final onShowSilentHint()V
    .locals 0

    return-void
.end method

.method public final onShowVibrateHint()V
    .locals 0

    return-void
.end method

.method public final onShowVolumeLimiterToast()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SHOW_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;->this$0:Lcom/android/systemui/volume/SamsungVolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/extensions/VolumeStateConverter;->convert(Lcom/android/systemui/plugins/VolumeDialogController$State;)Lcom/samsung/systemui/splugins/volume/VolumeState;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getActiveStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->activeStream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setVolumeState(Lcom/samsung/systemui/splugins/volume/VolumeState;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelImpl;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isVoiceCapable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isVoiceCapable(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public final onVolumeChangedFromKey()V
    .locals 0

    return-void
.end method
