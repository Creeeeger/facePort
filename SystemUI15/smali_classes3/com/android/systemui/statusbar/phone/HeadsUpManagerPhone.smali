.class public final Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
.super Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/data/repository/HeadsUpRepository;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field public mAnimationStateHandler:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda13;

.field public final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

.field public final mEntriesToRemoveWhenReorderingAllowed:Landroidx/collection/ArraySet;

.field public final mEntryPool:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;

.field public final mExtensionTime:I

.field public final mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

.field public final mHeadsUpAnimatingAway:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public mHeadsUpInset:I

.field public final mHeadsUpNotificationRows:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final mHeadsUpPhoneListeners:Ljava/util/List;

.field public mIsExpanded:Z

.field public final mOnReorderingAllowedListener:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$$ExternalSyntheticLambda0;

.field public mReleaseOnExpandFinish:Z

.field public mStatusBarState:I

.field public final mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$3;

.field public final mSwipedOutKeys:Ljava/util/HashSet;

.field public final mTopHeadsUpRow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final mTouchableRegion:Landroid/graphics/Region;

.field public mTrackingHeadsUp:Z

.field public final mVisualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/policy/AvalancheController;)V
    .locals 11

    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p16

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;Landroid/os/Handler;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/AvalancheController;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpPhoneListeners:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTopHeadsUpRow:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpNotificationRows:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpAnimatingAway:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveWhenReorderingAllowed:Landroidx/collection/ArraySet;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntryPool:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;

    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mOnReorderingAllowedListener:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$3;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    iget-object v1, v10, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mExtensionTime:I

    move-object v1, p3

    invoke-interface {p3, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    move-object v0, p4

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    move-object/from16 v0, p6

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mVisualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->updateResources$2$1()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$2;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    move-object/from16 v1, p7

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    move-object/from16 v0, p15

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    move-object/from16 v2, p14

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final canRemoveImmediately(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHeadsUpEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    sget-object v2, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->getTopHeadsUpEntry()Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->canRemoveImmediately(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final createHeadsUpEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntryPool:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->assertInLegacyMode()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->mRemoveRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget p1, p1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mTouchAcceptanceDelay:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->mPostTime:J

    const/4 p1, 0x1

    const-string/jumbo v0, "setEntry"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "HeadsUpManagerPhone state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p2, "  mBarState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "  mTouchableRegion="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final isTrackingHeadsUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    return p0
.end method

.method public final onEntryAdded(Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->onEntryAdded(Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->updateTopHeadsUpFlow()V

    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHeadsUpEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpNotificationRows:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onEntryRemoved(Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->onEntryRemoved(Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;)V

    sget-object v0, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntryPool:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;

    check-cast p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;->release(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->updateTopHeadsUpFlow()V

    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHeadsUpEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpNotificationRows:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onEntryUpdated$1()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->updateTopHeadsUpFlow()V

    return-void
.end method

.method public final setGutsShown(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    move-result-object p0

    instance-of v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_4

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mGutsShownPinned:Z

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mGutsShownPinned:Z

    if-eqz p2, :cond_3

    const-string/jumbo p1, "setGutsShownPinned(true)"

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->cancelAutoRemovalCallbacks(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    const-string/jumbo p2, "setGutsShownPinned(false)"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Ljava/lang/String;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final setHeadsUpAnimatingAway(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpAnimatingAway:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpPhoneListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    if-nez p1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationPanelView:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$3;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mIsExpanded:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    :cond_2
    if-nez v0, :cond_3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public final snooze()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->snooze()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mReleaseOnExpandFinish:Z

    return-void
.end method

.method public final updateResources$2$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    const v2, 0x7f070459

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpInset:I

    return-void
.end method

.method public final updateTopHeadsUpFlow()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->getTopHeadsUpEntry()Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/data/repository/HeadsUpRowRepository;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTopHeadsUpRow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method
