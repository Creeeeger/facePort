.class public final Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public final mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

.field public mCollapseSnoozes:Z

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public final mPanel:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$HeadsUpNotificationViewController;

.field public mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mTouchSlop:F

.field public mTouchingHeadsUpView:Z

.field public mTrackingHeadsUp:Z

.field public mTrackingPointer:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$HeadsUpNotificationViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$HeadsUpNotificationViewController;

    check-cast p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;

    iget-object p1, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchSlop:F

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    return-void
.end method


# virtual methods
.method public final endMotion$1()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    const/4 v6, 0x1

    if-eqz v3, :cond_9

    if-eq v3, v6, :cond_7

    const/4 v7, 0x2

    if-eq v3, v7, :cond_4

    const/4 v0, 0x3

    if-eq v3, v0, :cond_7

    const/4 v0, 0x6

    if-eq v3, v0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    if-ne v2, v0, :cond_d

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_3

    move v6, v1

    :cond_3
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    goto/16 :goto_2

    :cond_4
    iget p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    sub-float p1, v0, p1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-eqz v3, :cond_d

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchSlop:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_d

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    sub-float v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v3, v3, v7

    if-lez v3, :cond_d

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp$1(Z)V

    const/4 v3, 0x0

    cmpg-float p1, p1, v3

    if-gez p1, :cond_5

    move v1, v6

    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsCollapsingHeadsup:Z

    iput v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$HeadsUpNotificationViewController;

    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController$HeadsUpNotificationViewControllerImpl;

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController$HeadsUpNotificationViewControllerImpl;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v3, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setHeadsUpDraggingStartingHeight(I)V

    int-to-float p1, p1

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController$HeadsUpNotificationViewControllerImpl;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-static {v1, v2, v0, v6, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    check-cast v5, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->unpinAll(Z)V

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion$1()V

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openNotificationPanelFromHun:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1, p0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    :goto_0
    return v6

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-eqz v0, :cond_8

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast v5, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->mPostTime:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion$1()V

    return v6

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion$1()V

    goto :goto_2

    :cond_9
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp$1(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    instance-of v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_b

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez p1, :cond_a

    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz p1, :cond_a

    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-eqz p1, :cond_a

    goto :goto_1

    :cond_a
    move v6, v1

    :goto_1
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-eqz v6, :cond_d

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_2

    :cond_b
    if-nez v0, :cond_d

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$13;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez p1, :cond_d

    check-cast v5, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->getTopHeadsUpEntry()Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object v4, p1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    :cond_d
    :goto_2
    return v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion$1()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp$1(Z)V

    :goto_0
    return v0
.end method

.method public final setTrackingHeadsUp$1(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$HeadsUpNotificationViewController;

    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController$HeadsUpNotificationViewControllerImpl;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$HeadsUpNotificationViewControllerImpl;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeHeadsUpTracker:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpTrackerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeHeadsUpTrackerImpl;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-object p1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackedHeadsUpNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Consumer;

    invoke-interface {v2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    return-void
.end method
