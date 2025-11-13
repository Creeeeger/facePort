.class public final Lcom/android/keyguard/KeyguardDisplayManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mConnectedDisplayKeyguardPresentationFactory:Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$Factory;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceStateHelper:Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;

.field public final mDisableHandler:Lcom/android/keyguard/KeyguardPresentationDisabler;

.field public final mDisplayCallback:Lcom/android/keyguard/KeyguardDisplayManager$1;

.field public final mDisplayService:Landroid/hardware/display/DisplayManager;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mKeyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

.field public mMediaRouter:Landroid/media/MediaRouter;

.field public final mMediaRouterCallback:Lcom/android/keyguard/KeyguardDisplayManager$3;

.field public final mNavigationBarControllerLazy:Ldagger/Lazy;

.field public final mPresentations:Landroid/util/SparseArray;

.field public mShowing:Z

.field public final mTmpDisplayInfo:Landroid/view/DisplayInfo;

.field public final mVisibilityListener:Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Lcom/android/keyguard/KeyguardPresentationDisabler;Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/settings/DisplayTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$Factory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/KeyguardFoldController;",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            "Lcom/android/keyguard/KeyguardPresentationDisabler;",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$Factory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mVisibilityListener:Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentations:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDisplayManager$1;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    new-instance v1, Lcom/android/keyguard/KeyguardDisplayManager$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardDisplayManager$3;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Lcom/android/keyguard/KeyguardDisplayManager$3;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDisableHandler:Lcom/android/keyguard/KeyguardPresentationDisabler;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mKeyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mNavigationBarControllerLazy:Ldagger/Lazy;

    new-instance p2, Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    invoke-interface {p8, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p4, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDisplayService:Landroid/hardware/display/DisplayManager;

    iput-object p6, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    check-cast p6, Lcom/android/systemui/settings/DisplayTrackerImpl;

    invoke-virtual {p6, v0, p7}, Lcom/android/systemui/settings/DisplayTrackerImpl;->addDisplayChangeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;Ljava/util/concurrent/Executor;)V

    iput-object p9, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDeviceStateHelper:Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;

    iput-object p10, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p11, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mConnectedDisplayKeyguardPresentationFactory:Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$Factory;

    sget-boolean p2, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mKeyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    new-instance p2, Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    const/4 p0, 0x0

    const/4 p3, 0x6

    invoke-virtual {p1, p2, p3, p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Lcom/android/keyguard/KeyguardDisplayManager$3;

    invoke-virtual {v0, v2}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    return-void
.end method

.method public final hideAfterKeyguardInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mKeyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mVisibilityListener:Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->addVisibilityChangedListener(Ljava/util/function/IntConsumer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    :goto_0
    return-void
.end method

.method public final show()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Lcom/android/keyguard/KeyguardDisplayManager$3;

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardDisplayManager"

    const-string v2, "MediaRouter not yet initialized"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    return-void
.end method

.method public final showPresentation(Landroid/view/Display;)Z
    .locals 5

    const-string v0, "KeyguardDisplayManager"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v2, "Cannot show Keyguard on null display"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v2, v1

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "Do not show KeyguardPresentation on the default display"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->displayGroupId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "display type=0x%x, flags=0x%x, displayGroupId=0x%x"

    invoke-static {v0, v3, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    const-string v2, "Do not show KeyguardPresentation on a private display"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3

    const-string v2, "Do not show KeyguardPresentation on an unlocked display"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDeviceStateHelper:Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;

    iget-boolean v4, v3, Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;->mIsInConcurrentDisplayState:Z

    if-eqz v4, :cond_4

    iget-object v3, v3, Lcom/android/keyguard/KeyguardDisplayManager$DeviceStateHelper;->mRearDisplayPhysicalAddress:Landroid/view/DisplayAddress$Physical;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/DisplayAddress$Physical;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "Do not show KeyguardPresentation when occluded and concurrent display is active"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-boolean v3, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

    if-eqz v3, :cond_5

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mKeyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Do not show KeyguardPresentation to the large front sub display when non-secure"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDisableHandler:Lcom/android/keyguard/KeyguardPresentationDisabler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardPresentationDisabler;->isEnabled(Landroid/view/DisplayInfo;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_6

    return v1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Keyguard enabled on display: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Presentation;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mConnectedDisplayKeyguardPresentationFactory:Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$Factory;

    invoke-interface {v3, p1}, Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation$Factory;->create(Landroid/view/Display;)Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;

    move-result-object p1

    new-instance v3, Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/keyguard/KeyguardDisplayManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/keyguard/ConnectedDisplayKeyguardPresentation;I)V

    invoke-virtual {p1, v3}, Landroid/app/Presentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v3, "Invalid display:"

    invoke-static {v0, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {p0, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_7
    return v1
.end method

.method public final updateDisplays(Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    check-cast p1, Lcom/android/systemui/settings/DisplayTrackerImpl;

    iget-object p1, p1, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {p0, v4, v1}, Lcom/android/keyguard/KeyguardDisplayManager;->updateNavigationBarVisibility(IZ)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardDisplayManager;->showPresentation(Landroid/view/Display;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    iget-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_1
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardDisplayManager;->updateNavigationBarVisibility(IZ)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->dismiss()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    :cond_2
    return-void
.end method

.method public final updateNavigationBarVisibility(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mNavigationBarControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
