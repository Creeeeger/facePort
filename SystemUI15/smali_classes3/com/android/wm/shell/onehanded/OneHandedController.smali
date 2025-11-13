.class public final Lcom/android/wm/shell/onehanded/OneHandedController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;
.implements Lcom/android/wm/shell/sysui/UserChangeListener;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mAccessibilityStateChangeListener:Lcom/android/wm/shell/onehanded/OneHandedController$2;

.field public final mActivatedObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplaysChangedListener:Lcom/android/wm/shell/onehanded/OneHandedController$1;

.field public final mEnabledObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

.field public mEventCallback:Lcom/android/systemui/wmshell/WMShell$11;

.field public final mImpl:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

.field public mIsOneHandedEnabled:Z

.field public mIsShortcutEnabled:Z

.field public mIsSwipeToNotificationEnabled:Z

.field public mKeyguardShowing:Z

.field public mLockedDisabled:Z

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mOffSetFraction:F

.field public final mOneHandedAccessibilityUtil:Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

.field public final mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

.field public final mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mShortcutEnabledObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

.field public final mState:Lcom/android/wm/shell/onehanded/OneHandedState;

.field public final mSwipeToNotificationEnabledObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

.field public mTaskChangeToExit:Z

.field public final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field public final mTaskStackListenerCallback:Lcom/android/wm/shell/onehanded/OneHandedController$4;

.field public final mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

.field public final mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

.field public final mTransitionCallBack:Lcom/android/wm/shell/onehanded/OneHandedController$3;

.field public final mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;Lcom/android/wm/shell/onehanded/OneHandedState;Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V
    .locals 7

    move-object v0, p0

    move-object/from16 v1, p16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;I)V

    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mImpl:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplaysChangedListener:Lcom/android/wm/shell/onehanded/OneHandedController$1;

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$2;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$2;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityStateChangeListener:Lcom/android/wm/shell/onehanded/OneHandedController$2;

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$3;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$3;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTransitionCallBack:Lcom/android/wm/shell/onehanded/OneHandedController$3;

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$4;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$4;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/onehanded/OneHandedController$4;

    move-object v2, p1

    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    move-object v3, p3

    iput-object v3, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v3, p4

    iput-object v3, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    move-object/from16 v4, p10

    iput-object v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedAccessibilityUtil:Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    move-object v4, p6

    iput-object v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    move-object v4, p5

    iput-object v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v4, p7

    iput-object v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    move-object v4, p8

    iput-object v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v4, p13

    iput-object v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    move-object/from16 v4, p14

    iput-object v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    iput-object v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090005

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const-string v6, "persist.debug.one_handed_offset_percentage"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    iput v6, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    iput v4, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOffSetFraction:F

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedController$5;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedController$5;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mActivatedObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedController$5;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedController$5;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEnabledObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedController$5;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedController$5;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mSwipeToNotificationEnabledObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lcom/android/wm/shell/onehanded/OneHandedController$5;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedController$5;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShortcutEnabledObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    move-object v2, p2

    invoke-virtual {p2, v1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "OneHandedController"

    const-string v0, "Components may not initialized yet!"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isLockedDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mLockedDisabled:Z

    return p0
.end method

.method public isOneHandedEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    return p0
.end method

.method public isShortcutEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsShortcutEnabled:Z

    return p0
.end method

.method public isSwipeToNotificationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    return p0
.end method

.method public notifyExpandNotification()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEventCallback:Lcom/android/systemui/wmshell/WMShell$11;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public notifyShortcutStateChanged(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isShortcutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "one_handed_mode_activated"

    invoke-static {v0, p0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onActivatedActionChanged()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isShortcutEnabled()Z

    move-result v0

    const-string v1, "OneHandedController"

    if-nez v0, :cond_0

    const-string p0, "Shortcut not enabled, skip onActivatedActionChanged()"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isOneHandedEnabled()Z

    move-result v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v4, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "one_handed_mode_enabled"

    invoke-static {v0, v5, v2, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Auto enabled One-handed mode by shortcut trigger, success="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isSwipeToNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->notifyExpandNotification()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    const/4 v1, 0x2

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v4

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v5, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "one_handed_mode_activated"

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    xor-int/2addr v0, v2

    if-eqz v0, :cond_6

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->startOneHanded()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    if-eqz p0, :cond_7

    iget p0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mBackgroundWindowManager:Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    iget v1, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mCurrentState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-ne v1, p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->updateThemeOnly()V

    :cond_3
    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->removeTutorialFromWindowManager()V

    iget v1, v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCurrentState:I

    if-eq v1, v2, :cond_4

    if-ne v1, p1, :cond_7

    :cond_4
    iget-object p1, v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->createViewAndAttachToWindow(Landroid/content/Context;)V

    iget-object p1, v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->getThemeColorForBackground()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_6
    :goto_0
    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->updateThemeColor()V

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->checkTransitionEnd()V

    :cond_7
    :goto_1
    return-void
.end method

.method public final onDisplayChange$1(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    iget-object p4, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-static {p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    const/4 p4, 0x4

    invoke-virtual {p1, p4}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object p4, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget p5, p4, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    if-ne p5, p3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p4, p1, p3}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(Landroid/content/res/Resources;I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->updateDisplayBounds()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->finishOffset(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onEnabledSettingChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    iput-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateOneHandedEnabled()V

    return-void
.end method

.method public final onKeyguardVisibilityChanged(ZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mKeyguardShowing:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    return-void
.end method

.method public final onShortcutEnabledChanged()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "accessibility_button_targets"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    sget-object v4, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->ONE_HANDED_MODE_TARGET_NAME:Ljava/lang/String;

    const/4 v5, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsShortcutEnabled:Z

    if-eqz v5, :cond_2

    const/16 v0, 0x14

    goto :goto_1

    :cond_2
    const/16 v0, 0x15

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    return-void
.end method

.method public onSwipeToNotificationEnabledChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/onehanded/OneHandedController;->notifyShortcutStateChanged(I)V

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    return-void
.end method

.method public final onUserChanged$1(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEnabledObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mSwipeToNotificationEnabledObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShortcutEnabledObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->registerSettingObservers(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateSettings()V

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateOneHandedEnabled()V

    return-void
.end method

.method public final registerSettingObservers(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "one_handed_mode_activated"

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mActivatedObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

    invoke-static {v1, v0, v2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mEnabledObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

    const-string v2, "one_handed_mode_enabled"

    invoke-static {v2, v0, v1, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mSwipeToNotificationEnabledObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

    const-string/jumbo v2, "swipe_bottom_to_notification_enabled"

    invoke-static {v2, v0, v1, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_targets"

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mShortcutEnabledObserver:Lcom/android/wm/shell/onehanded/OneHandedController$5;

    invoke-static {v1, v0, v2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_shortcut_target_service"

    invoke-static {v0, p0, v2, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->registerSettingsKeyObserver(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/database/ContentObserver;I)V

    return-void
.end method

.method public setLockedDisabled(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-ne p2, v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mLockedDisabled:Z

    return-void
.end method

.method public startOneHanded()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isLockedDisabled()Z

    move-result v0

    const-string v1, "OneHandedController"

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-boolean v2, v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mIsReady:Z

    if-nez v2, :cond_1

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p0, "One handed mode only support portrait mode"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/onehanded/OneHandedState;->setState(I)V

    iget-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOffSetFraction:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedAccessibilityUtil:Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    iget-object v3, v2, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mStartOneHandedDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->announcementForScreenReader(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->scheduleOffset(I)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->resetTimer()V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const-string p0, "Temporary lock disabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopOneHanded()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    return-void
.end method

.method public final stopOneHanded(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/onehanded/OneHandedState;->setState(I)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedAccessibilityUtil:Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;

    iget-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->mStopOneHandedDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedAccessibilityUtil;->announcementForScreenReader(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->scheduleOffset(I)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    iget-object v1, v0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v0, v0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mTimeoutRunnable:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedUiEventLogger:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateDisplayLayout(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "OneHandedController"

    const-string p1, "Failed to get new DisplayLayout."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->setDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTutorialHandler:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialHeightRatio:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialAreaHeight:I

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAlphaTransitionStart:F

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mBackgroundWindowManager:Lcom/android/wm/shell/onehanded/BackgroundWindowManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-direct {v0, v3, v3, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/BackgroundWindowManager;->mDisplayBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public final updateOneHandedEnabled()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mState:Lcom/android/wm/shell/onehanded/OneHandedState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isOneHandedEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->isSwipeToNotificationEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->notifyShortcutStateChanged(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTouchHandler:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    iput-boolean v0, v1, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->mIsEnabled:Z

    invoke-virtual {v1}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->updateIsEnabled()V

    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mDisplayAreaOrganizer:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->unregisterOrganizer()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->getDisplayAreaTokenMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->registerOrganizer(I)Ljava/util/List;

    :cond_4
    return-void
.end method

.method public final updateSettings()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsOneHandedEnabled:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->updateOneHandedEnabled()V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTimeoutHandler:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "one_handed_mode_timeout"

    const/16 v4, 0x8

    invoke-static {v2, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mTimeout:I

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mTimeoutMs:J

    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->resetTimer()V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "taps_app_to_exit"

    const/4 v3, 0x1

    invoke-static {v1, v0, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/onehanded/OneHandedController$4;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskStackListenerCallback:Lcom/android/wm/shell/onehanded/OneHandedController$4;

    iget-object v2, v0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v4, v0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    iget-object v5, v0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mTaskStackListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, v0, Lcom/android/wm/shell/common/TaskStackListenerImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "TaskStackListenerImpl"

    const-string v2, "Failed to call unregisterTaskStackListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mTaskChangeToExit:Z

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mUserId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController;->mIsSwipeToNotificationEnabled:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->onShortcutEnabledChanged()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
