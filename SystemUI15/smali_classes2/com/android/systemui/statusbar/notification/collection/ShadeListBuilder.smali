.class public final Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;


# static fields
.field public static final DEFAULT_SECTIONER:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$2;

.field public static final MAX_CONSECUTIVE_REENTRANT_REBUILDS:I = 0x3


# instance fields
.field public mAllEntries:Ljava/util/Collection;

.field public final mChoreographer:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographer;

.field public mConsecutiveReentrantRebuilds:I

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mGroupChildrenComparator:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda4;

.field public final mGroups:Ljava/util/Map;

.field public final mInteractionTracker:Lcom/android/systemui/statusbar/NotificationInteractionTracker;

.field public mIterationCount:I

.field public final mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

.field public mNewNotifList:Ljava/util/List;

.field public final mNotifComparators:Ljava/util/List;

.field public final mNotifFinalizeFilters:Ljava/util/List;

.field public mNotifList:Ljava/util/List;

.field public final mNotifPreGroupFilters:Ljava/util/List;

.field public final mNotifPromoters:Ljava/util/List;

.field public final mNotifSections:Ljava/util/List;

.field public mNotifStabilityManager:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

.field public final mOnBeforeFinalizeFilterListeners:Lcom/android/systemui/util/NamedListenerSet;

.field public final mOnBeforeRenderListListeners:Lcom/android/systemui/util/NamedListenerSet;

.field public final mOnBeforeSortListeners:Lcom/android/systemui/util/NamedListenerSet;

.field public final mOnBeforeTransformGroupsListeners:Lcom/android/systemui/util/NamedListenerSet;

.field public mOnRenderListListener:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$attach$1;

.field public mPendingEntries:Ljava/util/Collection;

.field public final mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

.field public mReadOnlyNewNotifList:Ljava/util/List;

.field public mReadOnlyNotifList:Ljava/util/List;

.field public final mReadyForBuildListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

.field public final mSemiStableSort:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;

.field public final mStableOrder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mTempSectionMembers:Ljava/util/ArrayList;

.field public final mTopLevelComparator:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$2;

    const-string v1, "UnknownSection"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->DEFAULT_SECTIONER:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$2;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographer;Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;Lcom/android/systemui/statusbar/NotificationInteractionTracker;Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mTempSectionMembers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mSemiStableSort:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mStableOrder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPendingEntries:Ljava/util/Collection;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPreGroupFilters:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPromoters:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifFinalizeFilters:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifComparators:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/util/NamedListenerSet;

    invoke-direct {v1}, Lcom/android/systemui/util/NamedListenerSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeTransformGroupsListeners:Lcom/android/systemui/util/NamedListenerSet;

    new-instance v1, Lcom/android/systemui/util/NamedListenerSet;

    invoke-direct {v1}, Lcom/android/systemui/util/NamedListenerSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeSortListeners:Lcom/android/systemui/util/NamedListenerSet;

    new-instance v1, Lcom/android/systemui/util/NamedListenerSet;

    invoke-direct {v1}, Lcom/android/systemui/util/NamedListenerSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeFinalizeFilterListeners:Lcom/android/systemui/util/NamedListenerSet;

    new-instance v1, Lcom/android/systemui/util/NamedListenerSet;

    invoke-direct {v1}, Lcom/android/systemui/util/NamedListenerSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeRenderListListeners:Lcom/android/systemui/util/NamedListenerSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNewNotifList:Ljava/util/List;

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mConsecutiveReentrantRebuilds:I

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadyForBuildListener:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$1;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mTopLevelComparator:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda3;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroupChildrenComparator:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda4;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p5, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mInteractionTracker:Lcom/android/systemui/statusbar/NotificationInteractionTracker;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mChoreographer:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographer;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->setSectioners(Ljava/util/List;)V

    return-void
.end method

.method public static annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->stableIndex:I

    return-void
.end method

.method public static annulAddition(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v0

    const-string v1, "Cannot nullify addition of "

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-ne v0, v2, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": it\'s still in the shade list."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz p0, :cond_4

    move-object p0, p1

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v1, "Cannot nullify group "

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, ": still has children"

    invoke-static {v1, v2, p1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, ": summary is not null"

    invoke-static {v1, v2, p1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eq p1, p0, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot nullify addition of child "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": it\'s still attached to its parent."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": no parent."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static applyFilters(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLjava/util/List;)Z
    .locals 5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {v3, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    iput-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    if-eqz v3, :cond_2

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    :cond_2
    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static callOnCleanup(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->onCleanup()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isSorted(Ljava/util/List;Ljava/util/Comparator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public final applyNewNotifList()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNewNotifList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNewNotifList:Ljava/util/List;

    return-void
.end method

.method public final buildList()V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "ShadeListBuilder.buildList"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    iget v6, v5, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    if-ge v6, v4, :cond_5b

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPendingEntries:Ljava/util/Collection;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPendingEntries:Ljava/util/Collection;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isPipelineRunAllowed()Z

    move-result v6

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    if-nez v6, :cond_1

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPipelineRunSuppressed()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    iput v4, v5, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->beginNewAttachState()V

    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iput-object v7, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    sget-boolean v10, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CHILD_TO_RECEIVE_PARENT_ALERT:Z

    if-eqz v10, :cond_2

    iput-object v7, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mLogicalSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_0

    :cond_3
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->beginNewAttachState()V

    sget-boolean v10, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CHILD_TO_RECEIVE_PARENT_ALERT:Z

    if-eqz v10, :cond_4

    iput-object v7, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mGroupEntry:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    goto :goto_1

    :cond_5
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->onBeginRun()V

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPreGroupFilters:Ljava/util/List;

    invoke-virtual {v0, v6, v9, v10}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->filterNotifs(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;)V

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    const-string v10, "ShadeListBuilder.groupNotifs"

    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isInsignificant()Z

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    if-eqz v11, :cond_a

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    check-cast v11, Landroid/util/ArrayMap;

    const-string v13, "INSIGNIFICANT"

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-nez v11, :cond_6

    new-instance v11, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-interface {v12}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-direct {v11, v13, v14, v15}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;-><init>(Ljava/lang/String;J)V

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    check-cast v12, Landroid/util/ArrayMap;

    invoke-virtual {v12, v13, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v12

    if-nez v12, :cond_7

    sget-object v12, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    sget-boolean v12, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CHILD_TO_RECEIVE_PARENT_ALERT:Z

    if-eqz v12, :cond_8

    iput-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mGroupEntry:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    :cond_8
    iget-object v12, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    iput-object v10, v11, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto/16 :goto_3

    :cond_9
    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_a
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    check-cast v13, Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-nez v13, :cond_b

    new-instance v13, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-interface {v12}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-direct {v13, v11, v14, v15}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;-><init>(Ljava/lang/String;J)V

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    check-cast v12, Landroid/util/ArrayMap;

    invoke-virtual {v12, v11, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v11

    if-nez v11, :cond_c

    sget-object v11, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v13, v11}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {v10, v13}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    sget-boolean v11, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CHILD_TO_RECEIVE_PARENT_ALERT:Z

    if-eqz v11, :cond_d

    iput-object v13, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mGroupEntry:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    :cond_d
    iget-object v12, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v13, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v12, :cond_e

    iput-object v10, v13, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v11, :cond_14

    iput-object v10, v13, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mLogicalSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_3

    :cond_e
    iget v14, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    invoke-virtual {v8, v14, v13, v12, v10}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logDuplicateSummary(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object v14, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v14

    iget-object v3, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v16

    cmp-long v3, v14, v16

    if-lez v3, :cond_10

    iput-object v10, v13, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v11, :cond_f

    iput-object v10, v13, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mLogicalSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_f
    invoke-static {v9, v12}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    goto :goto_3

    :cond_10
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    goto :goto_3

    :cond_11
    iget-object v3, v13, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_12
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    invoke-virtual {v8, v3, v11}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logDuplicateTopLevelKey(ILjava/lang/String;)V

    goto :goto_3

    :cond_13
    sget-object v3, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_3
    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_15
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyNewNotifList()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneIncompleteGroups(Ljava/util/List;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    const-string v6, "ShadeListBuilder.dispatchOnBeforeTransformGroups"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v6, v3, v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeTransformGroupsListeners:Lcom/android/systemui/util/NamedListenerSet;

    invoke-virtual {v3, v6}, Lcom/android/systemui/util/NamedListenerSet;->forEachTraced(Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v3, 0x5

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    const-string v6, "ShadeListBuilder.promoteNotifs"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move v6, v1

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_17

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    instance-of v10, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v10, :cond_16

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    new-instance v10, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda12;

    invoke-direct {v10, v0, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Ljava/util/List;)V

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_16
    add-int/2addr v6, v4

    goto :goto_4

    :cond_17
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneIncompleteGroups(Ljava/util/List;)V

    const/4 v3, 0x6

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isEveryChangeAllowed()Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_7

    :cond_18
    const-string v6, "ShadeListBuilder.stabilizeGroupingNotifs"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move v6, v1

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_1c

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    instance-of v10, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v10, :cond_1a

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    move v11, v1

    :goto_6
    iget-object v12, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_1b

    move-object v12, v10

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v13, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->maybeSuppressGroupChange(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/util/List;)Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/2addr v11, v2

    :cond_19
    add-int/2addr v11, v4

    goto :goto_6

    :cond_1a
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v9

    invoke-virtual {v0, v9, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->maybeSuppressGroupChange(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/2addr v6, v2

    :cond_1b
    add-int/2addr v6, v4

    goto :goto_5

    :cond_1c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_7
    const-string v3, "ShadeListBuilder.dispatchOnBeforeSort"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeSortListeners:Lcom/android/systemui/util/NamedListenerSet;

    invoke-virtual {v6, v3}, Lcom/android/systemui/util/NamedListenerSet;->forEachTraced(Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v3, 0x7

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    const-string v3, "ShadeListBuilder.assignSections"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    move v9, v1

    :goto_8
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_22

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    invoke-virtual {v11, v6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;->isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getPreviousAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getPreviousAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v11

    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v11, :cond_1e

    iget-object v11, v9, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    if-eq v10, v11, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isSectionChangeAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v11

    if-nez v11, :cond_1e

    iget-object v11, v6, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v11}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    iput-object v10, v11, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    :cond_1e
    iget-object v9, v6, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v9}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    iput-object v10, v9, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v9

    if-eqz v9, :cond_1f

    iget-object v11, v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v11}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    iput-object v10, v11, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    if-eqz v10, :cond_1f

    iget v11, v10, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->bucket:I

    iput v11, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    :cond_1f
    instance-of v9, v6, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v9, :cond_1d

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_20
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v11, v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v11}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    iput-object v10, v11, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iget-object v11, v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v11}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    iput-object v10, v11, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    if-eqz v10, :cond_20

    iget v11, v10, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->bucket:I

    iput v11, v9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    goto :goto_9

    :cond_21
    add-int/2addr v9, v4

    goto/16 :goto_8

    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing default sectioner!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v3, "ShadeListBuilder.notifySectionEntriesUpdated"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mTempSectionMembers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_24
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    move-result-object v11

    if-ne v6, v11, :cond_24

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mTempSectionMembers:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_25
    iget-object v9, v6, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->label:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mTempSectionMembers:Ljava/util/ArrayList;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;->onEntriesUpdated(Ljava/util/List;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mTempSectionMembers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_a

    :cond_26
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v3, "ShadeListBuilder.sortListAndGroups"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v4

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mStableOrder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mSemiStableSort:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;

    if-eqz v9, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    instance-of v12, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v12, :cond_30

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    sget-object v12, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v13, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v12, v13}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v12}, Lcom/android/systemui/util/SettingsHelper;->getNotificationSortOrderValue()I

    move-result v12

    if-ne v12, v4, :cond_27

    :goto_d
    move v2, v4

    goto/16 :goto_11

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isEveryChangeAllowed()Z

    move-result v12

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroupChildrenComparator:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda4;

    if-eqz v12, :cond_28

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    goto :goto_d

    :cond_28
    iget-object v12, v11, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->preallocatedWorkspace$delegate:Lkotlin/Lazy;

    invoke-interface {v12}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    iget-object v12, v11, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->preallocatedWorkspace$delegate:Lkotlin/Lazy;

    invoke-interface {v12}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_29

    move-object v14, v12

    goto :goto_e

    :cond_29
    move-object v14, v7

    :goto_e
    if-nez v14, :cond_2a

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    invoke-interface {v12, v14, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    :cond_2a
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->getRank(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_2b

    move-object v1, v14

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :cond_2b
    const/4 v2, -0x1

    goto :goto_f

    :cond_2c
    move-object v1, v14

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_2d

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$sortTo$$inlined$sortBy$1;

    invoke-direct {v1, v10}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$sortTo$$inlined$sortBy$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$StableOrder;)V

    invoke-static {v14, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2d
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->Companion:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;

    invoke-virtual {v1, v14, v13}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;->isSorted(Ljava/util/List;Ljava/util/Comparator;)Z

    move-result v2

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->getPreallocatedAdditions()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->getPreallocatedAdditions()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_10
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->getRank(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v20

    if-nez v20, :cond_2e

    invoke-interface {v15, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2e
    const/4 v7, 0x0

    goto :goto_10

    :cond_2f
    invoke-static {v15, v13}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v1, v14, v15, v13}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;->access$insertPreSortedElementsWithFewestMisOrderings(Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;Ljava/util/List;Ljava/lang/Iterable;Ljava/util/Comparator;)V

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->getPreallocatedAdditions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v9, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_11
    and-int/2addr v6, v2

    :cond_30
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v7, 0x0

    goto/16 :goto_c

    :cond_31
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mTopLevelComparator:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda3;

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isEveryChangeAllowed()Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderHelper;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_12
    if-ge v7, v3, :cond_36

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v13}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    if-eqz v13, :cond_32

    iget v13, v13, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->index:I

    goto :goto_13

    :cond_32
    const/4 v13, -0x1

    :goto_13
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    if-nez v12, :cond_33

    :goto_14
    move-object v12, v13

    goto :goto_15

    :cond_33
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_35

    sub-int v12, v7, v9

    if-lt v12, v4, :cond_34

    invoke-interface {v1, v9, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    move v9, v7

    goto :goto_14

    :cond_35
    :goto_15
    add-int/2addr v7, v4

    goto :goto_12

    :cond_36
    sub-int v7, v3, v9

    if-lt v7, v4, :cond_37

    invoke-interface {v1, v9, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_38

    move-object v7, v3

    goto :goto_17

    :cond_38
    const/4 v7, 0x0

    :goto_17
    if-nez v7, :cond_39

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v3, v7, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    :cond_39
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3a
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->getRank(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_3a

    move-object v12, v7

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_3b
    move-object v3, v7

    check-cast v3, Ljava/util/Collection;

    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$stabilizeTo$$inlined$compareBy$1;

    invoke-direct {v3, v10}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$stabilizeTo$$inlined$compareBy$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$StableOrder;)V

    sget-object v9, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->Companion:Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;

    invoke-virtual {v9, v7, v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;->isSorted(Ljava/util/List;Ljava/util/Comparator;)Z

    move-result v12

    if-nez v12, :cond_3c

    invoke-static {v7, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3c
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3d
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->getRank(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_3d

    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_3e
    check-cast v7, Ljava/util/Collection;

    const/4 v2, 0x0

    goto/16 :goto_1d

    :cond_3f
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->getPreallocatedAdditions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->getPreallocatedAdditions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_40
    :goto_1a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_41

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;->getRank(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v15

    if-nez v15, :cond_40

    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_41
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    xor-int/2addr v13, v4

    if-eqz v13, :cond_44

    iget-object v13, v11, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->preallocatedMapToIndex$delegate:Lkotlin/Lazy;

    invoke-interface {v13}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v14, 0x0

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v14, 0x1

    if-ltz v14, :cond_42

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Ljava/util/HashMap;

    invoke-interface {v4, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v14, v16

    const/4 v4, 0x1

    goto :goto_1b

    :cond_42
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v2, 0x0

    throw v2

    :cond_43
    const/4 v2, 0x0

    iget-object v4, v11, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->preallocatedMapToIndexComparator$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v9, v7, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;->access$insertPreSortedElementsWithFewestMisOrderings(Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort$Companion;Ljava/util/List;Ljava/lang/Iterable;Ljava/util/Comparator;)V

    invoke-interface {v13}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto :goto_1c

    :cond_44
    const/4 v2, 0x0

    :goto_1c
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/SemiStableSort;->getPreallocatedAdditions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_1d
    and-int/2addr v6, v12

    const/4 v4, 0x1

    goto/16 :goto_16

    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyNewNotifList()V

    :cond_46
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_47

    goto/16 :goto_20

    :cond_47
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_4b

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v10, v9, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->index:I

    iget v11, v3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->index:I

    if-eq v10, v11, :cond_48

    move-object v3, v9

    const/4 v4, 0x0

    :cond_48
    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v9}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    const/4 v10, 0x1

    add-int/lit8 v11, v4, 0x1

    iput v4, v9, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->stableIndex:I

    instance-of v9, v7, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v9, :cond_4a

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v9, :cond_49

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v9}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    const/4 v10, 0x2

    add-int/2addr v4, v10

    iput v11, v9, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->stableIndex:I

    move v11, v4

    :cond_49
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    const/4 v9, 0x1

    add-int/lit8 v10, v11, 0x1

    iput v11, v7, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->stableIndex:I

    move v11, v10

    goto :goto_1f

    :cond_4a
    const/4 v9, 0x1

    move v4, v11

    add-int/2addr v2, v9

    goto :goto_1e

    :cond_4b
    :goto_20
    if-nez v6, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->onEntryReorderSuppressed()V

    :cond_4c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    const-string v2, "ShadeListBuilder.dispatchOnBeforeFinalizeFilter"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;I)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeFinalizeFilterListeners:Lcom/android/systemui/util/NamedListenerSet;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/NamedListenerSet;->forEachTraced(Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNewNotifList:Ljava/util/List;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifFinalizeFilters:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->filterNotifs(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyNewNotifList()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneIncompleteGroups(Ljava/util/List;)V

    const/16 v1, 0x9

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->incrementTo(I)V

    const-string v1, "ShadeListBuilder.logChanges"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->logAttachStateChanges(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    goto :goto_21

    :cond_4d
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->logAttachStateChanges(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    goto :goto_22

    :cond_4e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v1, "ShadeListBuilder.freeEmptyGroups"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v1, "ShadeListBuilder.cleanupPluggables"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPreGroupFilters:Ljava/util/List;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->callOnCleanup(Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPromoters:Ljava/util/List;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->callOnCleanup(Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifFinalizeFilters:Ljava/util/List;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->callOnCleanup(Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifComparators:Ljava/util/List;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->callOnCleanup(Ljava/util/List;)V

    const/4 v2, 0x0

    :goto_23
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_50

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->onCleanup()V

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->comparator:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->onCleanup()V

    :cond_4f
    const/4 v1, 0x1

    add-int/2addr v2, v1

    goto :goto_23

    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->callOnCleanup(Ljava/util/List;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    const-string v2, "ShadeListBuilder.dispatchOnBeforeRenderList"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;I)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeRenderListListeners:Lcom/android/systemui/util/NamedListenerSet;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/NamedListenerSet;->forEachTraced(Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v1, "ShadeListBuilder.onRenderList"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnRenderListListener:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$attach$1;

    if-eqz v1, :cond_57

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$attach$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_51

    const-string v4, "RenderStageManager.onRenderList"

    invoke-static {v4}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_51
    :try_start_0
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->viewRenderer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_52

    if-eqz v3, :cond_57

    :goto_24
    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    goto :goto_26

    :cond_52
    :try_start_1
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_53

    const-string v9, "ShadeViewManager.onRenderList"

    invoke-static {v9}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_53
    :try_start_2
    iget-object v9, v6, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->viewDiffer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;

    iget-object v10, v6, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->specBuilder:Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->rootController:Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;

    invoke-virtual {v10, v6, v2}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->buildNodeSpec(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Ljava/util/List;)Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->applySpec(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_54

    :try_start_3
    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_54
    invoke-virtual {v1, v4, v2}, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->dispatchOnAfterRenderList(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;Ljava/util/List;)V

    invoke-virtual {v1, v4, v2}, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->dispatchOnAfterRenderGroups(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;Ljava/util/List;)V

    invoke-virtual {v1, v4, v2}, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->dispatchOnAfterRenderEntries(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;Ljava/util/List;)V

    if-eqz v3, :cond_57

    goto :goto_24

    :catchall_0
    move-exception v0

    goto :goto_25

    :catchall_1
    move-exception v0

    if-eqz v7, :cond_55

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_55
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_25
    if-eqz v3, :cond_56

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_56
    throw v0

    :cond_57
    :goto_26
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v1, "ShadeListBuilder.logEndBuildList"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_59

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    instance-of v9, v7, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v9, :cond_58

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v6

    move v6, v7

    :cond_58
    const/4 v7, 0x1

    add-int/2addr v4, v7

    goto :goto_27

    :cond_59
    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isEveryChangeAllowed()Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-virtual {v8, v1, v2, v6, v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logEndBuildList(IIIZ)V

    iget v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_5a

    const-string v1, "ShadeListBuilder.logFinalList"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifList:Ljava/util/List;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logFinalList(Ljava/util/List;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_5a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v1, 0x0

    iput v1, v5, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    iget v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required state is <1 but actual state is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v5, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13

    const-string p2, "\tShadeListBuilder shade notifications:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\t\t None"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mReadOnlyNotifList:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mInteractionTracker:Lcom/android/systemui/statusbar/NotificationInteractionTracker;

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/NotificationInteractionTracker;->hasUserInteractedWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v4, 0x1

    const-string v2, "\t\t"

    move-object v0, v9

    move-object v3, v6

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/collection/ListDumper;->dumpEntry(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)V

    instance-of v0, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v0, :cond_2

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v0, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v11, "\t\t  "

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/systemui/statusbar/NotificationInteractionTracker;->hasUserInteractedWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v4, 0x1

    move-object v2, v11

    move-object v3, v6

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/collection/ListDumper;->dumpEntry(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)V

    :cond_1
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    move v12, v7

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_2

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/systemui/statusbar/NotificationInteractionTracker;->hasUserInteractedWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v4, 0x1

    move-object v2, v11

    move-object v3, v6

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/collection/ListDumper;->dumpEntry(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    .locals 2

    const-string v0, "choreographer"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mChoreographer:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographer;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPreGroupFilters:Ljava/util/List;

    const-string v1, "notifPreGroupFilters"

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBeforeTransformGroupsListeners"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeTransformGroupsListeners:Lcom/android/systemui/util/NamedListenerSet;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifPromoters:Ljava/util/List;

    const-string v1, "notifPromoters"

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBeforeSortListeners"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeSortListeners:Lcom/android/systemui/util/NamedListenerSet;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    const-string v1, "notifSections"

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifComparators:Ljava/util/List;

    const-string v1, "notifComparators"

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBeforeFinalizeFilterListeners"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeFinalizeFilterListeners:Lcom/android/systemui/util/NamedListenerSet;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifFinalizeFilters:Ljava/util/List;

    const-string v1, "notifFinalizeFilters"

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBeforeRenderListListeners"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeRenderListListeners:Lcom/android/systemui/util/NamedListenerSet;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRenderListListener"

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnRenderListListener:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$attach$1;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final filterNotifs(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    const-string v0, "ShadeListBuilder.filterNotifs"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    instance-of v2, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v2, v0, v1, p3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyFilters(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    :cond_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v4, v0, v1, p3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyFilters(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLjava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v2, v0, v1, p3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->applyFilters(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JLjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    goto :goto_0

    :cond_4
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifStabilityManager:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/DefaultNotifStabilityManager;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/DefaultNotifStabilityManager;

    :cond_0
    return-object p0
.end method

.method public final logAttachStateChanges(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V
    .locals 7

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getPreviousAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mLogger:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;

    invoke-virtual {v5, v2, p1, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logEntryAttachStateChanged(ILcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eq p1, v2, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    invoke-virtual {v5, v3, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logParentChanged(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    :cond_0
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v5, v4, v2, v6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logParentChangeSuppressedStarted(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    :cond_2
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v5, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logParentChangeSuppressedStopped(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    :cond_3
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    if-eqz v2, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    invoke-virtual {v5, v3, v2, v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logSectionChangeSuppressed(ILcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;)V

    :cond_4
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->wasPruneSuppressed:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v5, p1, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logGroupPruningSuppressed(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    :cond_5
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    invoke-virtual {v5, p1, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPrunedReasonChanged(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    if-eq p1, v2, :cond_7

    iget v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    invoke-virtual {v5, v3, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logFilterChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    :cond_7
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-nez p1, :cond_8

    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_9

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    if-eq v2, v3, :cond_9

    iget v4, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    invoke-virtual {v5, v4, v3, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logPromoterChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V

    :cond_9
    if-nez p1, :cond_a

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    if-eq p1, v0, :cond_a

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mIterationCount:I

    invoke-virtual {v5, p0, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->logSectionChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;)V

    :cond_a
    return-void
.end method

.method public final maybeSuppressGroupChange(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/util/List;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getPreviousAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eq v0, v3, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    move-result-object v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isGroupChangeAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    if-ne v0, v3, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mGroups:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public final pruneGroupAtIndexAndPromoteAnyChildren(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;I)V
    .locals 7

    invoke-interface {p1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    iput-object v5, p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SUMMARY with too few children @ "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getStateName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    :cond_2
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CHILD with "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " siblings @ "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getStateName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CHILD with no summary @ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getStateName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    sget-object v3, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, v2, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {p1, p3, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    return-void
.end method

.method public final pruneIncompleteGroups(Ljava/util/List;)V
    .locals 11

    const-string v0, "ShadeListBuilder.pruneIncompleteGroups"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isEveryChangeAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mAllEntries:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    if-eqz v4, :cond_3

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_4
    if-ltz v3, :cond_10

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v6, :cond_f

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    iget-object v7, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v7, :cond_7

    move v7, v4

    goto :goto_5

    :cond_7
    move v7, v1

    :goto_5
    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mKey:Ljava/lang/String;

    if-eqz v7, :cond_a

    move-object v9, v6

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0, p1, v5, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneGroupAtIndexAndPromoteAnyChildren(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;I)V

    goto/16 :goto_7

    :cond_8
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const-string v7, "group should have no children"

    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    sget-object v7, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->ROOT_ENTRY:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V

    invoke-interface {p1, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    if-ne v7, v5, :cond_9

    move v7, v4

    goto :goto_6

    :cond_9
    move v7, v1

    :goto_6
    invoke-static {v7}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->annulAddition(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    iget-object v5, v6, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SUMMARY with no children @ "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    iget v7, v7, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getStateName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->groupPruneReason:Ljava/lang/String;

    goto :goto_7

    :cond_a
    if-nez v7, :cond_b

    invoke-virtual {p0, p1, v5, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneGroupAtIndexAndPromoteAnyChildren(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;I)V

    goto :goto_7

    :cond_b
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_f

    const-string v9, "INSIGNIFICANT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_7

    :cond_c
    const-string v9, "group must have summary at this point"

    invoke-static {v7, v9}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v4

    const-string v9, "empty group should have been promoted"

    invoke-static {v7, v9}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    if-eqz v7, :cond_d

    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    iget-object v5, v8, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    iput-boolean v4, v5, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->wasPruneSuppressed:Z

    goto :goto_7

    :cond_d
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getPreviousAttachState()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v7, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->getStabilityManager()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;->isGroupPruneAllowed(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    const-string v6, "empty group should have been pruned"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->checkNull(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V

    iget-object v5, v8, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    iput-boolean v4, v5, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->wasPruneSuppressed:Z

    goto :goto_7

    :cond_e
    invoke-virtual {p0, p1, v5, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->pruneGroupAtIndexAndPromoteAnyChildren(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;I)V

    :cond_f
    :goto_7
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_4

    :cond_10
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final rebuildListIfBefore(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->scheduleRebuild(IZ)V

    return-void

    :cond_0
    if-le p1, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->scheduleRebuild(IZ)V

    return-void
.end method

.method public final scheduleRebuild(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mChoreographer:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographer;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mConsecutiveReentrantRebuilds:I

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->schedule()V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    iget p2, p2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->mState:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getStateName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->getStateName(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Reentrant notification pipeline rebuild of state "

    const-string v3, " while pipeline in state "

    const-string v4, "."

    invoke-static {v2, p1, v3, p2, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mConsecutiveReentrantRebuilds:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mConsecutiveReentrantRebuilds:I

    const/4 p2, 0x3

    const-string v2, "ShadeListBuilder"

    if-gt p1, p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Allowing "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mConsecutiveReentrantRebuilds:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " consecutive reentrant notification pipeline rebuild(s)."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->schedule()V

    return-void

    :cond_1
    const-string p0, "Crashing after more than 3 consecutive reentrant notification pipeline rebuilds."

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1
.end method

.method public final setSectioners(Ljava/util/List;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;-><init>(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->setInvalidationListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable$PluggableListener;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->comparator:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->setInvalidationListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable$PluggableListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->DEFAULT_SECTIONER:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$2;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;-><init>(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iget v1, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->bucket:I

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifSections:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iget v2, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->bucket:I

    if-eq v1, v2, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSectioners with non contiguous sections "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->label:Ljava/lang/String;

    const-string v1, " has an already seen bucket"

    invoke-static {p1, v0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    iget v1, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->bucket:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method
