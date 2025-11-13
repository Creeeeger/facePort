.class public final Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;
.super Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;
.implements Lcom/android/systemui/shade/PanelTransitionStateListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mDetailController:Lcom/android/systemui/qs/SecQSDetailController;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mExpandAnimator:Lcom/android/systemui/qs/animator/QsExpandAnimator;

.field public final mImmersiveScrollAnimator:Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;

.field public final mList:Ljava/util/ArrayList;

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final mNotificationScrolled:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$1;

.field public mOnPanelOpenedCalledAlready:Z

.field public final mOpenAnimator:Lcom/android/systemui/qs/animator/QsOpenAnimator;

.field public final mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

.field public final mPanelSplitOpenAnimator:Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;

.field public final mPanelTransitionAnimator:Lcom/android/systemui/qs/animator/PanelTransitionAnimator;

.field public final mQsDetailPopupAnimator:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/QsExpandAnimator;Lcom/android/systemui/qs/animator/QsOpenAnimator;Lcom/android/systemui/qs/animator/QsTransitionAnimator;Lcom/android/systemui/qs/animator/PanelTransitionAnimator;Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;Lcom/android/systemui/qs/animator/PanelAffordanceAnimator;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/shade/SecPanelSplitHelper;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;-><init>()V

    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mOnPanelOpenedCalledAlready:Z

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$1;-><init>(Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;)V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mNotificationScrolled:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$1;

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;-><init>(Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;)V

    iput-object p10, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p9, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mExpandAnimator:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    iput-object p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mOpenAnimator:Lcom/android/systemui/qs/animator/QsOpenAnimator;

    iput-object p3, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iput-object v0, p3, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    iput-object p7, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mQsDetailPopupAnimator:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iput-object v0, p7, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->animStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    iput-object p4, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mPanelTransitionAnimator:Lcom/android/systemui/qs/animator/PanelTransitionAnimator;

    iput-object p5, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mPanelSplitOpenAnimator:Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;

    iput-object p6, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mImmersiveScrollAnimator:Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;

    const-string p1, "SecQSImplAnimatorManager"

    const-string/jumbo p2, "updateAnimatorList"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;

    invoke-virtual {p3}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->clearAnimationState()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mExpandAnimator:Lcom/android/systemui/qs/animator/QsExpandAnimator;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mOpenAnimator:Lcom/android/systemui/qs/animator/QsOpenAnimator;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mPanelTransitionAnimator:Lcom/android/systemui/qs/animator/PanelTransitionAnimator;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mPanelSplitOpenAnimator:Lcom/android/systemui/qs/animator/PanelSplitOpenAnimator;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mImmersiveScrollAnimator:Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mList:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mQsDetailPopupAnimator:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p11}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->setShadeRepository(Lcom/android/systemui/shade/data/repository/ShadeRepository;)V

    iput-object p12, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    iput-object p13, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iput-object p14, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p12, p0}, Lcom/android/systemui/qs/SecQSDetailController;->setQsAnimatorManager(Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;)V

    iput-object p0, p13, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    sget-object p2, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    iget-object p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    invoke-virtual {p13, p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->addListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    iget-object p1, p13, Lcom/android/systemui/shade/SecPanelSplitHelper;->userChanged:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object p2, p13, Lcom/android/systemui/shade/SecPanelSplitHelper;->executor:Ljava/util/concurrent/Executor;

    iget-object p3, p13, Lcom/android/systemui/shade/SecPanelSplitHelper;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p14, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->addCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    return-void
.end method


# virtual methods
.method public final destroyQSViews()V
    .locals 5

    const-string v0, "destroyQSViews"

    const-string v1, "SecQSImplAnimatorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecQSDetailController;->setQsAnimatorManager(Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;)V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iput-object v2, v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    sget-object v3, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/systemui/logging/PanelScreenShotLogger;->providers:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    iget-object v3, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v1, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->removeExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->removeListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    iget-object v1, v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v0, v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->userChanged:Lcom/android/systemui/settings/UserTracker$Callback;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->removeCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iput-object v2, v0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mQsDetailPopupAnimator:Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;

    iput-object v2, p0, Lcom/android/systemui/qs/animator/QsDetailPopupAnimator;->animStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p2, "Quick Panel Animation State =============================================== "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->getAnimationState()Ljava/util/ArrayList;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const-string p0, "=========================================================================== "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final executeConsumer(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda17;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda17;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->getAnimationState()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getAnimationState()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SecQSImplAnimatorManager ============================================= "

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mQsExpanded = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/systemui/qs/animator/QsAnimatorState;->qsExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mQsFullyExpanded = false  mPanelExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/systemui/qs/animator/QsAnimatorState;->panelExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mIsExpanding = false  mState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mQsExpandImmediate = false mQsCollapsingWhilePanelClosing = false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  isCustomizerShowing = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isCustomizerShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  isDetailOpening = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailOpening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  isDetailShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isDetailClosing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailClosing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isDetailPopupShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailPopupShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "============================================================== "

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda17;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda17;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda17;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda17;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "SecQSImplAnimatorManager"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onNotificationScrolled(I)V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onPanelClosed$1()V
    .locals 2

    const-string v0, "SecQSImplAnimatorManager"

    const-string v1, "onPanelClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->panelExpanded:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->updatePanelExpanded(Z)V

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mOnPanelOpenedCalledAlready:Z

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->panelExpanded:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->updatePanelExpanded(Z)V

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mOnPanelOpenedCalledAlready:Z

    if-nez p1, :cond_3

    new-instance p1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mOnPanelOpenedCalledAlready:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final onPanelOpened()V
    .locals 2

    const-string v0, "SecQSImplAnimatorManager"

    const-string v1, "onPanelOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onRtlChanged()V
    .locals 2

    const-string v0, "SecQSImplAnimatorManager"

    const-string v1, "onRtlChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onUserSwitched(I)V
    .locals 0

    new-instance p1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setFancyClipping(IIIIIZZ)V
    .locals 9

    new-instance v8, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;-><init>(IIIIIZZ)V

    move-object v0, p0

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setNotificationStackScrollerController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mNotificationScrolled:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollChangedConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public final setOverDragAmount(F)V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda7;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda7;-><init>(FI)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setOverScrollAmount(F)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mOverScrollAmount:F

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda7;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda7;-><init>(FI)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setPanelViewController(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 2

    const-string v0, "SecQSImplAnimatorManager"

    const-string/jumbo v1, "setQs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->updateAnimators()V

    :cond_0
    return-void
.end method

.method public final setQsExpanded(Z)V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda5;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setQsExpansionPosition(F)V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda7;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda7;-><init>(FI)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setShadeRepository(Lcom/android/systemui/shade/data/repository/ShadeRepository;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setStackScrollerOverscrolling(Z)V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda5;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setTransitionToFullShadeAmount(F)V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda7;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda7;-><init>(FI)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final slide(FFLcom/android/systemui/shade/PanelSlideEventHandler$Direction;I)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mOverScrollAmount:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->setOverScrollAmount(F)V

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda26;-><init>(FFLcom/android/systemui/shade/PanelSlideEventHandler$Direction;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final updateAnimators()V
    .locals 2

    const-string v0, "SecQSImplAnimatorManager"

    const-string/jumbo v1, "updateAnimators"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final updatePanelExpanded(Z)V
    .locals 2

    sput-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->panelExpanded:Z

    new-instance v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda5;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda5;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method
