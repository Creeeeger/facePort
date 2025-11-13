.class public final Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFling:Z

    iget-object v1, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->isSecure$1()Z

    move-result p1

    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    sget-object v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHORTCUT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/4 v6, 0x0

    div-float/2addr v6, v5

    float-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    if-nez v2, :cond_0

    const/16 v8, 0xbe

    invoke-virtual {v7, v8, v6, v5}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    goto :goto_0

    :cond_0
    iget v8, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastCameraLaunchSource:I

    const/4 v9, 0x3

    if-ne v9, v8, :cond_1

    const/16 v8, 0xbd

    invoke-virtual {v7, v8, v6, v5}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    :cond_1
    :goto_0
    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->launchAffordance(Z)V

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    const-wide/16 v5, 0x1388

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    const/16 v7, 0x3eb

    invoke-interface {p1, v7, v5, v6}, Lcom/android/systemui/util/concurrency/MessageRouter;->sendMessageDelayed(IJ)V

    :cond_3
    iput v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShortcut:I

    iget-object p1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    const-class v2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    if-nez p1, :cond_4

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShortcut:I

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isNoUnlockNeeded(I)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShortcut:I

    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->reset(Z)V

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    check-cast p1, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    iput-boolean v3, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    iget-object v1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput-object v4, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    :cond_7
    iget-object v1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget v1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShortcut:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskType(I)Z

    move-result v0

    xor-int/2addr v0, v3

    iput-boolean v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$7;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutLaunchAnimator:Landroid/animation/Animator;

    return-void
.end method
