.class public final Lcom/android/keyguard/KeyguardPluginControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field public final mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public final mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mPendingLockCheck:Landroid/os/AsyncTask;

.field public mPromptReason:I

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public mStrongAuthPopupMessage:Ljava/lang/String;

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public static -$$Nest$monPasswordChecked(Lcom/android/keyguard/KeyguardPluginControllerImpl;IZI)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPasswordChecked matched "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " timeoutMs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardPluginController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v3, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    if-ne v3, p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-interface {v2, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    if-eqz v3, :cond_a

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v2, v1, p1, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_4

    :cond_1
    invoke-interface {v2, p1, p3, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v3

    const-string v4, ")"

    const-string v5, ""

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    if-eqz v3, :cond_4

    iget-object p1, v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/android/systemui/knox/EdmMonitor;->mPkgNameForMaxAttemptDisable:Ljava/lang/String;

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x1040458

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p1, v5

    goto :goto_2

    :cond_3
    const-string v2, "("

    invoke-static {v2, p1, v4}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mStrongAuthPopupMessage:Ljava/lang/String;

    invoke-interface {v6, v1, p1, v5, v0}, Lcom/android/systemui/util/DesktopManager;->notifyUpdateBouncerMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-lez p3, :cond_5

    invoke-interface {v3, p1, p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setLockoutAttemptDeadline(II)J

    sget-object v7, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_LOCKOUT_DEADLINE:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {v3, v2, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_5
    int-to-long v7, p3

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_a

    invoke-interface {v3, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    move-result v7

    invoke-interface {v3, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCredentialTypeForUser(I)I

    move-result p1

    if-eq p1, v1, :cond_8

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x4

    if-eq p1, v2, :cond_7

    goto :goto_3

    :cond_6
    const v0, 0x7f130904

    goto :goto_3

    :cond_7
    const v0, 0x7f130902

    goto :goto_3

    :cond_8
    const v0, 0x7f130903

    :goto_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-lez v7, :cond_9

    const-string v0, " ("

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f110006

    invoke-virtual {v0, v3, v7, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_9
    invoke-interface {v6}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mStrongAuthPopupMessage:Ljava/lang/String;

    invoke-interface {v6, v1, p1, v5, v0}, Lcom/android/systemui/util/DesktopManager;->notifyUpdateBouncerMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_a
    :goto_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v0, "SubScreenManager"

    if-nez p1, :cond_b

    const-string p0, "onPasswordChecked() no plugin"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onPasswordChecked() "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked$1()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    invoke-virtual {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubScreenFallback(Landroid/view/Display;)V

    :cond_c
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0, p2, p3}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onPasswordChecked(ZI)V

    :goto_5
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iput-object p5, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-object p6, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iput-object p7, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p8, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object p9, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;I)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/keyguard/KeyguardPluginControllerImpl;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    return-void
.end method


# virtual methods
.method public final showWipeWarningDialog(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    const-string v2, ""

    invoke-interface {v0, v1, v2, v2, p1}, Lcom/android/systemui/util/DesktopManager;->notifyUpdateBouncerMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v1, "SubScreenManager"

    if-nez v0, :cond_1

    const-string p0, "showWipeWarningDialog() no plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "showWipeWarningDialog() "

    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->showWipeWarningDialog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
