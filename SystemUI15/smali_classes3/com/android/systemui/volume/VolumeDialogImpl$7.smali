.class public final Lcom/android/systemui/volume/VolumeDialogImpl$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    const/16 v1, 0xa

    if-ne v1, v0, :cond_1

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    :goto_1
    return-void
.end method

.method public final onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumePanelFlag:Lcom/android/systemui/volume/panel/shared/flag/VolumePanelFlag;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final onCaptionEnabledStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setCaptionsEnabledState(Z)V

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    iget-boolean v0, p2, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mCaptionsEnabled:Z

    if-eq v0, p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iput-boolean p1, p2, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mCaptionsEnabled:Z

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f13145c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f13145d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v1, Lcom/android/systemui/volume/CaptionsToggleImageButton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/android/systemui/volume/CaptionsToggleImageButton$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/CaptionsToggleImageButton;)V

    invoke-static {p2, v0, p1, v1}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    iget-boolean p1, p2, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mCaptionsEnabled:Z

    if-eqz p1, :cond_2

    const p1, 0x7f080b62

    goto :goto_1

    :cond_2
    const p1, 0x7f080b63

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setImageResourceAsync(I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public final onConfigurationChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    return-void
.end method

.method public final onDismissRequested(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public final onLayoutDirectionChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method public final onScreenOff()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public final onShowCsdWarning(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->showCsdWarningH(II)V

    return-void
.end method

.method public final onShowRequested(IZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumeDialogImpl;->-$$Nest$mshowH(Lcom/android/systemui/volume/VolumeDialogImpl;IZI)V

    return-void
.end method

.method public final onShowSafetyWarning(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    and-int/lit16 p1, p1, 0x401

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_1

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$5;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$5;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onShowSilentHint()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public final onShowVibrateHint()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method public final onVolumeChangedFromKey()V
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->mHapticPlugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->onKeyDown()V

    :cond_0
    return-void
.end method
