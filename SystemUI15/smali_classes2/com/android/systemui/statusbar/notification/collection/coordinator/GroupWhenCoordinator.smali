.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private cancelInvalidateListRunnable:Ljava/lang/Runnable;

.field private final delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final invalidateListRunnable:Ljava/lang/Runnable;

.field private final invalidator:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidator$1;

.field private final notificationGroupTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/statusbar/notification/collection/GroupEntry;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidator$1;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidator$1;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->invalidator:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidator$1;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->notificationGroupTimes:Landroid/util/ArrayMap;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidateListRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidateListRunnable$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->invalidateListRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getInvalidator$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidator$1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->invalidator:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidator$1;

    return-object p0
.end method

.method public static final synthetic access$onAfterRenderGroupListener(Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifGroupController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->onAfterRenderGroupListener(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifGroupController;)V

    return-void
.end method

.method public static final synthetic access$onBeforeFinalizeFilterListener(Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->onBeforeFinalizeFilterListener(Ljava/util/List;)V

    return-void
.end method

.method private final calculateGroupNotificationTime(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;J)J
    .locals 17

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$calculateGroupNotificationTime$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$calculateGroupNotificationTime$1;

    invoke-static {v2, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v1

    new-instance v2, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v2, v1}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    const-wide/high16 v3, -0x8000000000000000L

    const-wide v5, 0x7fffffffffffffffL

    move-wide v7, v3

    move-wide v9, v5

    :goto_0
    invoke-virtual {v2}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    sub-long v13, p2, v11

    const-wide/16 v15, 0x0

    cmp-long v1, v13, v15

    if-lez v1, :cond_0

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_0

    :cond_0
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    goto :goto_0

    :cond_1
    cmp-long v1, v7, v3

    if-nez v1, :cond_3

    cmp-long v1, v9, v5

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mCreationTime:J

    return-wide v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    cmp-long v0, v9, v5

    if-eqz v0, :cond_4

    move-wide v7, v9

    :cond_4
    return-wide v7
.end method

.method private final cancelListInvalidation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->cancelInvalidateListRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->cancelInvalidateListRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final onAfterRenderGroupListener(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifGroupController;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->notificationGroupTimes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_7

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->setNotificationWhen(J)V

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mMinimizedGroupHeaderWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->setNotificationWhen(J)V

    :cond_1
    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    if-eqz v1, :cond_2

    iput-wide p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mWhenMillis:J

    :cond_2
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    instance-of p2, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    if-eqz p2, :cond_8

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->setNotificationWhen(J)V

    goto :goto_1

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setNotificationGroupWhen( whenMillis: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") mIsSummaryWithChildren: false mChildrenContainer has not been inflated yet."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExpandableNotifRow"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Called setNotificationTime("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") on a leaf row"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotifRowController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void
.end method

.method private final onBeforeFinalizeFilterListener(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->cancelListInvalidation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->notificationGroupTimes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v2, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$onBeforeFinalizeFilterListener$$inlined$filterIsInstance$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$onBeforeFinalizeFilterListener$$inlined$filterIsInstance$1;

    invoke-static {v2, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p1

    new-instance v2, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v2, p1}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    const-wide v3, 0x7fffffffffffffffL

    move-wide v5, v3

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->calculateGroupNotificationTime(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->notificationGroupTimes:Landroid/util/ArrayMap;

    invoke-virtual {v10, p1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long p1, v7, v0

    if-lez p1, :cond_0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    goto :goto_0

    :cond_1
    cmp-long p1, v5, v3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->invalidateListRunnable:Ljava/lang/Runnable;

    sub-long/2addr v5, v0

    invoke-interface {p1, v2, v5, v6}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->cancelInvalidateListRunnable:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeFinalizeFilterListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$attach$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$attach$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mRenderStageManager:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderGroupListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->invalidator:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidator$1;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreRenderInvalidator(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Invalidator;)V

    return-void
.end method
