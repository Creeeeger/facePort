.class public final Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field public final activityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

.field public final assistManagerLazy:Ldagger/Lazy;

.field public final biometricUnlockControllerLazy:Ldagger/Lazy;

.field public final centralSurfacesOptLazy:Ldagger/Lazy;

.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final context:Landroid/content/Context;

.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final displayId:I

.field public final dozeServiceHostLazy:Ldagger/Lazy;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardViewMediatorLazy:Ldagger/Lazy;

.field public final lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final notifShadeWindowControllerLazy:Ldagger/Lazy;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final shadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

.field public final shadeControllerLazy:Ldagger/Lazy;

.field public final statusBarKeyguardViewManagerLazy:Ldagger/Lazy;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/animation/ActivityTransitionAnimator;Landroid/content/Context;ILcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/animation/ActivityTransitionAnimator;",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowController;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/ActivityIntentHelper;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->centralSurfacesOptLazy:Ldagger/Lazy;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->assistManagerLazy:Ldagger/Lazy;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->dozeServiceHostLazy:Ldagger/Lazy;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->biometricUnlockControllerLazy:Ldagger/Lazy;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardViewMediatorLazy:Ldagger/Lazy;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->shadeControllerLazy:Ldagger/Lazy;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->shadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->statusBarKeyguardViewManagerLazy:Ldagger/Lazy;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->notifShadeWindowControllerLazy:Ldagger/Lazy;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->activityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->context:Landroid/content/Context;

    move/from16 v1, p16

    iput v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->displayId:I

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-void
.end method

.method public static final access$getSubDisplayID(Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/qp/util/SubscreenUtil;->getSubDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invoking dismissKeyguardThenExecute, afterKeyguardGone: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyActivityStarterInternalImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->willRunAnimationOnKeyguard()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-nez v0, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->dozeServiceHostLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->biometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(ILcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;)V

    :cond_0
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->shadeControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v3}, Lcom/android/systemui/shade/ShadeController;->isExpandedVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v3, v4}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->needsCollapsePanelWithNoAnimation()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v0, v4}, Lcom/android/systemui/shade/ShadeController;->collapseShade(Z)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->statusBarKeyguardViewManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/keyguard/KeyguardViewController;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZZZ)V

    goto :goto_0

    :cond_3
    iget-boolean p2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->getCentralSurfaces()Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-result-object p0

    if-eqz p0, :cond_4

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->awakenDreams()V

    :cond_4
    invoke-interface {p1}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    :goto_0
    return-void
.end method

.method public final executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZLjava/lang/String;)V
    .locals 10

    invoke-static {p1}, Lcom/android/systemui/util/LogUtil;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2}, Lcom/android/systemui/util/LogUtil;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p3}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v2

    invoke-static {p4}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v3

    invoke-static {p5}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v4

    invoke-static/range {p6 .. p6}, Lcom/android/systemui/util/LogUtil;->getInt(Z)I

    move-result v5

    invoke-static/range {p7 .. p7}, Lcom/android/systemui/util/LogUtil;->getInt(Ljava/lang/Object;)I

    move-result v6

    const-string v7, "dismissAction requested r="

    const-string v8, " cancel="

    const-string v9, " collapse="

    invoke-static {v0, v1, v7, v8, v9}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " after="

    const-string v7, " def="

    invoke-static {v0, v2, v1, v3, v7}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, " will="

    const-string v2, ", msg="

    invoke-static {v0, v4, v1, v5, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUnlockInfo"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p0

    move v5, p3

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$executeRunnableDismissingKeyguard$onDismissAction$1;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;ZZZ)V

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    invoke-virtual {p0, v0, p2, p4}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final getActivityUserHandle(Landroid/content/Intent;)Landroid/os/UserHandle;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/os/UserHandle;-><init>(I)V

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public final getCentralSurfaces()Lcom/android/systemui/statusbar/phone/CentralSurfaces;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->centralSurfacesOptLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    return-object p0
.end method

.method public final startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLandroid/os/UserHandle;)V
    .locals 11

    move-object v0, p0

    if-nez p5, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->getActivityUserHandle(Landroid/content/Intent;)Landroid/os/UserHandle;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p5

    :goto_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p4, :cond_2

    :cond_1
    move-object v1, p1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->shadeControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v1}, Lcom/android/systemui/shade/ShadeController;->cancelExpansionAndCollapseShade()V

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->getCentralSurfaces()Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->awakenDreams()V

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivity$1;

    move-object v1, p1

    invoke-direct {v7, p0, p1, v9}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivity$1;-><init>(Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->activityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/animation/ActivityTransitionAnimator;->startIntentWithAnimation(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    return-void

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v10, 0x40

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Ljava/lang/String;ZLandroid/os/UserHandle;I)V

    return-void
.end method

.method public final wrapAnimationControllerForShadeOrStatusBar(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZZ)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;
    .locals 9

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    if-eq v0, v2, :cond_1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLaunchAnimationContainer:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->setTransitionContainer(Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$2;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$2;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->getCentralSurfaces()Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->shadeControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/shade/ShadeController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->notifShadeWindowControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->displayId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->shadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v1, p2

    move-object v2, p1

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/CommandQueue;IZ)V

    return-object p2

    :cond_3
    return-object p1
.end method
