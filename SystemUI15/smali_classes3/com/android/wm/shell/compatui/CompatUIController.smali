.class public final Lcom/android/wm/shell/compatui/CompatUIController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;
.implements Lcom/android/wm/shell/compatui/api/CompatUIHandler;


# instance fields
.field public final mActiveCompatLayouts:Landroid/util/SparseArray;

.field public mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

.field public final mActiveMultiTaskingAppCompatLayouts:Landroid/util/SparseArray;

.field public mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

.field public mCallback:Ljava/util/function/Consumer;

.field public final mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

.field public final mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;

.field public final mCompatUIShellCommandHandler:Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

.field public final mCompatUIStatusManager:Lcom/android/wm/shell/compatui/CompatUIStatusManager;

.field public final mContext:Landroid/content/Context;

.field public mDeferVisibilityUpdate:Z

.field public final mDisappearTimeSupplier:Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda11;

.field public final mDisplayContextCache:Landroid/util/SparseArray;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public final mDisplaysWithIme:Ljava/util/Set;

.field public final mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

.field public final mHandleFixedRotation:Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda10;

.field public mHasShownUserAspectRatioSettingsButton:Z

.field public final mImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field public mIsFirstReachabilityEducationRunning:Z

.field public mKeyguardShowing:Z

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mOnInsetsChangedListeners:Landroid/util/SparseArray;

.field public final mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

.field public mTopActivityTaskId:I

.field public final mTransitionsLazy:Ldagger/Lazy;

.field public mUserAspectRatioSettingsLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

.field public mWaitingForFixedRotation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Ldagger/Lazy;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;Landroid/view/accessibility/AccessibilityManager;Lcom/android/wm/shell/compatui/CompatUIStatusManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ldagger/Lazy;",
            "Lcom/android/wm/shell/common/DockStateReader;",
            "Lcom/android/wm/shell/compatui/CompatUIConfiguration;",
            "Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/wm/shell/compatui/CompatUIStatusManager;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mOnInsetsChangedListeners:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveMultiTaskingAppCompatLayouts:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    iput-boolean v2, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mHasShownUserAspectRatioSettingsButton:Z

    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mHandleFixedRotation:Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda10;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mContext:Landroid/content/Context;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mTransitionsLazy:Ldagger/Lazy;

    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;

    invoke-direct {v1}, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIShellCommandHandler:Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda11;

    move-object/from16 v2, p13

    invoke-direct {v1, v2}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda11;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisappearTimeSupplier:Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda11;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIStatusManager:Lcom/android/wm/shell/compatui/CompatUIStatusManager;

    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda10;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    move-object v2, p2

    invoke-virtual {p2, v1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createCompatUiWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/CompatUIWindowManager;
    .locals 11

    new-instance v10, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    iget-object v4, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCallback:Ljava/util/function/Consumer;

    iget v0, p2, Landroid/app/TaskInfo;->displayId:I

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v6

    new-instance v9, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {v9, p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v7, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;

    iget-object v8, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/function/Consumer;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Ljava/util/function/Consumer;)V

    return-object v10
.end method

.method public createLetterboxEduWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;
    .locals 12

    new-instance v11, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    iget v0, p2, Landroid/app/TaskInfo;->displayId:I

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTransitionsLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/wm/shell/transition/Transitions;

    new-instance v7, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;

    const/4 v0, 0x5

    invoke-direct {v7, p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    iget-object v9, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget-object v10, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIStatusManager:Lcom/android/wm/shell/compatui/CompatUIStatusManager;

    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v8, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDockStateReader:Lcom/android/wm/shell/common/DockStateReader;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/compatui/CompatUIStatusManager;)V

    return-object v11
.end method

.method public createMultiTaskingAppCompatUiWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;
    .locals 9

    new-instance v8, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;

    iget-object v4, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCallback:Ljava/util/function/Consumer;

    iget v0, p2, Landroid/app/TaskInfo;->displayId:I

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v6

    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/function/Consumer;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIController;)V

    return-object v8
.end method

.method public final createOrUpdateReachabilityEduLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    iget v2, v0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget v0, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createReachabilityEduWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    move-result-object p2

    iget p1, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    :cond_4
    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    :cond_5
    return-void
.end method

.method public final createOrUpdateUserAspectRatioSettingsLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mUserAspectRatioSettingsLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mUserAspectRatioSettingsLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mUserAspectRatioSettingsLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mUserAspectRatioSettingsLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    iget v2, v0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mUserAspectRatioSettingsLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mUserAspectRatioSettingsLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget v0, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->createUserAspectRatioSettingsWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    move-result-object p2

    iget p1, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mUserAspectRatioSettingsLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    :cond_4
    return-void
.end method

.method public createReachabilityEduWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;
    .locals 11

    new-instance v10, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    iget v0, p2, Landroid/app/TaskInfo;->displayId:I

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    new-instance v8, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {v8, p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    iget-object v6, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget-object v7, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v9, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisappearTimeSupplier:Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda11;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/function/BiConsumer;Ljava/util/function/Function;)V

    return-object v10
.end method

.method public createRestartDialogWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/RestartDialogWindowManager;
    .locals 11

    new-instance v10, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    iget v0, p2, Landroid/app/TaskInfo;->displayId:I

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTransitionsLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/wm/shell/transition/Transitions;

    new-instance v7, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;

    const/4 v0, 0x3

    invoke-direct {v7, p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    new-instance v8, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;

    const/4 v0, 0x4

    invoke-direct {v8, p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    iget-object v9, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V

    return-object v10
.end method

.method public createUserAspectRatioSettingsWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;
    .locals 13

    move-object v0, p0

    new-instance v12, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    move-object v2, p2

    iget v1, v2, Landroid/app/TaskInfo;->displayId:I

    iget-object v3, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    new-instance v7, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v7, p0, v1}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    new-instance v10, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;)V

    new-instance v11, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;

    invoke-direct {v11, p0, v1}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    iget-object v6, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIHintsState:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;

    iget-object v8, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v3, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v9, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisappearTimeSupplier:Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda11;

    move-object v0, v12

    move-object v1, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/compatui/CompatUIController$CompatUIHintsState;Ljava/util/function/BiConsumer;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    return-object v12
.end method

.method public final forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    if-eqz v2, :cond_0

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    if-eqz v1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveMultiTaskingAppCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveMultiTaskingAppCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveMultiTaskingAppCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;

    if-eqz v2, :cond_3

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    if-eqz v1, :cond_5

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    if-eqz v0, :cond_7

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mUserAspectRatioSettingsLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    if-eqz v0, :cond_8

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mUserAspectRatioSettingsLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public final getOrCreateDisplayContext(I)Landroid/content/Context;
    .locals 3

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mContext:Landroid/content/Context;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string p0, "Cannot get context for display "

    const-string v1, "CompatUIController"

    invoke-static {p1, p0, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final onCompatInfoChanged(Lcom/android/wm/shell/compatui/api/CompatUIInfo;)V
    .locals 10

    iget-object v0, p1, Lcom/android/wm/shell/compatui/api/CompatUIInfo;->taskInfo:Landroid/app/TaskInfo;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v1}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    iget v2, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    iget-object p1, p1, Lcom/android/wm/shell/compatui/api/CompatUIInfo;->listener:Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTopActivityTaskId:I

    iget v3, v0, Landroid/app/TaskInfo;->taskId:I

    if-eq v2, v3, :cond_1

    iget-boolean v2, v0, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Landroid/app/TaskInfo;->isVisible:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Landroid/app/TaskInfo;->isFocused:Z

    if-eqz v2, :cond_1

    iput v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTopActivityTaskId:I

    iput-boolean v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mHasShownUserAspectRatioSettingsButton:Z

    :cond_1
    iget-object v2, v0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_21

    if-nez p1, :cond_2

    goto/16 :goto_9

    :cond_2
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->hasMinAspectRatioOverride()Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_3
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->isRotationCompatModeEnabled()Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_4
    iget-object v2, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-boolean v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mIsFirstReachabilityEducationRunning:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->isFromLetterboxDoubleTap()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v2

    if-nez v2, :cond_5

    return-void

    :cond_5
    iput-boolean v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mIsFirstReachabilityEducationRunning:Z

    :cond_6
    iget-object v2, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->isTopActivityLetterboxed()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    if-eqz v2, :cond_f

    iget-object v2, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->isLetterboxEducationEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0, p1}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    invoke-virtual {v2}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->release()V

    iput-object v4, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    iget v6, v2, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    invoke-virtual {p0, v6}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v6

    invoke-virtual {v2, v0, p1, v6}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    invoke-virtual {v2}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->release()V

    iput-object v4, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    goto/16 :goto_3

    :cond_8
    :goto_0
    iget v2, v0, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_9

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->createLetterboxEduWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    move-result-object v2

    iget v6, v0, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0, v6}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->release()V

    :cond_a
    iput-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    goto/16 :goto_3

    :cond_b
    iget-object v2, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->isFromLetterboxDoubleTap()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->isTopActivityPillarboxed()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v6, v5, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    iget v7, v0, Landroid/app/TaskInfo;->userId:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "has_seen_horizontal_reachability_education@"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_c

    move v6, v3

    goto :goto_1

    :cond_c
    move v6, v1

    :goto_1
    if-nez v2, :cond_d

    iget-object v2, v5, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    iget v7, v0, Landroid/app/TaskInfo;->userId:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "has_seen_vertical_reachability_education@"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v3

    goto :goto_2

    :cond_d
    move v2, v1

    :goto_2
    if-nez v6, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    iget v2, v0, Landroid/app/TaskInfo;->userId:I

    iget-object v6, v5, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mLetterboxEduSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v2}, Landroid/app/AppCompatTaskInfo;->isLetterboxDoubleTapEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    iput-boolean v3, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mIsFirstReachabilityEducationRunning:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->createOrUpdateReachabilityEduLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void

    :cond_f
    :goto_3
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    iget v6, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    iget v7, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v2}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    goto :goto_4

    :cond_10
    iget v6, v2, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    invoke-virtual {p0, v6}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v6

    invoke-virtual {v2, v0, p1, v6}, Lcom/android/wm/shell/compatui/CompatUIWindowManager;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    iget v6, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_5

    :cond_11
    :goto_4
    iget v2, v0, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_12

    goto :goto_5

    :cond_12
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->createCompatUiWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    move-result-object v2

    iget v6, v0, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0, v6}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    iget v7, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v6, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_13
    :goto_5
    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    iget v6, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->needsToBeRecreated(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    iget v7, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v2}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->release()V

    goto :goto_6

    :cond_14
    iget-object v6, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    iget v7, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mRequestRestartDialog:Z

    iget v6, v2, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    invoke-virtual {p0, v6}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v6

    invoke-virtual {v2, v0, p1, v6}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    iget v6, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_7

    :cond_15
    :goto_6
    iget v2, v0, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_16

    goto :goto_7

    :cond_16
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->createRestartDialogWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    move-result-object v2

    iget-object v6, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    iget v7, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->mRequestRestartDialog:Z

    iget v6, v0, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0, v6}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    iget v7, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v6, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    :goto_7
    iget v2, v0, Landroid/app/TaskInfo;->userId:I

    iget-object v5, v5, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mLetterboxEduSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v1}, Landroid/app/AppCompatTaskInfo;->isLetterboxDoubleTapEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->createOrUpdateReachabilityEduLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    :cond_18
    invoke-virtual {v0}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result v1

    if-eq v1, v3, :cond_1a

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mUserAspectRatioSettingsLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    iput-object v4, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mUserAspectRatioSettingsLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    :cond_19
    return-void

    :cond_1a
    iget-object v1, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v1}, Landroid/app/AppCompatTaskInfo;->isFromLetterboxDoubleTap()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->createOrUpdateUserAspectRatioSettingsLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    :cond_1b
    return-void

    :cond_1c
    iget-object v1, v0, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iget-object v1, v1, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_1d

    const-string p1, "CompatUIController"

    const-string v1, "no activity bounds"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->removeLayouts(I)V

    return-void

    :cond_1d
    iget-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveMultiTaskingAppCompatLayouts:Landroid/util/SparseArray;

    iget v2, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;

    if-eqz v1, :cond_1e

    iget v2, v1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p1

    if-nez p1, :cond_20

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveMultiTaskingAppCompatLayouts:Landroid/util/SparseArray;

    iget p1, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_8

    :cond_1e
    iget v1, v0, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/compatui/CompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_8

    :cond_1f
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->createMultiTaskingAppCompatUiWindowManager(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;

    move-result-object p1

    iget v1, v0, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->createLayout(Z)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveMultiTaskingAppCompatLayouts:Landroid/util/SparseArray;

    iget v0, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_20
    :goto_8
    return-void

    :cond_21
    :goto_9
    iget p1, v0, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->removeLayouts(I)V

    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 3

    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    iget-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;->this$0:Lcom/android/wm/shell/compatui/CompatUIController;

    iget-object v1, v1, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget v2, v0, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mOnInsetsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 2

    iget-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p2

    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda17;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda19;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda19;-><init>(I)V

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mWaitingForFixedRotation:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mHandleFixedRotation:Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda10;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mWaitingForFixedRotation:Z

    iget-boolean p2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDeferVisibilityUpdate:Z

    if-eqz p2, :cond_0

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDeferVisibilityUpdate:Z

    new-instance p1, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda6;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda6;-><init>(I)V

    new-instance p2, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mOnInsetsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;->this$0:Lcom/android/wm/shell/compatui/CompatUIController;

    iget-object v1, v1, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget v2, v0, Lcom/android/wm/shell/compatui/CompatUIController$PerDisplayOnInsetsChangedListener;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/common/DisplayInsetsController;->removeInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mOnInsetsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda17;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda19;

    invoke-direct {v2, p1}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda19;-><init>(I)V

    invoke-virtual {p0, v2, v1}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/compatui/CompatUIController;->removeLayouts(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onFixedRotationStarted(II)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mWaitingForFixedRotation:Z

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mHandleFixedRotation:Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda10;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final onImeVisibilityChanged(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_0
    new-instance p2, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda18;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda18;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda19;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onKeyguardVisibilityChanged(ZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mKeyguardShowing:Z

    iget-boolean p2, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mWaitingForFixedRotation:Z

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDeferVisibilityUpdate:Z

    new-instance p1, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda6;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda6;-><init>(I)V

    new-instance p2, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;

    const/4 p3, 0x6

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    new-instance p1, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V

    new-instance p2, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda6;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->forAllLayouts(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final removeLayouts(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    if-ne v2, p1, :cond_1

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveMultiTaskingAppCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUIWindowManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveMultiTaskingAppCompatLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->release()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    if-eqz v0, :cond_4

    iget v2, v0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    if-ne v2, p1, :cond_4

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveReachabilityEduLayout:Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mUserAspectRatioSettingsLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    if-eqz v0, :cond_5

    iget v2, v0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mTaskId:I

    if-ne v2, p1, :cond_5

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mUserAspectRatioSettingsLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    :cond_5
    return-void
.end method

.method public final setCallback(Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public final showOnDisplay(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
