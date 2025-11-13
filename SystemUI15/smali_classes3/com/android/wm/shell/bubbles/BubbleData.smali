.class public final Lcom/android/wm/shell/bubbles/BubbleData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;


# instance fields
.field public mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

.field public final mBubbles:Ljava/util/List;

.field public mCancelledListener:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

.field public mCurrentUserId:I

.field public final mEducationController:Lcom/android/wm/shell/bubbles/BubbleEducationController;

.field public mExpanded:Z

.field public mListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

.field public final mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mMaxBubbles:I

.field public mMaxOverflowBubbles:I

.field public mNeedsTrimming:Z

.field public final mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

.field public final mOverflowBubbles:Ljava/util/List;

.field public final mPendingBubbles:Ljava/util/HashMap;

.field public final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field public mShowingOverflow:Z

.field public mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

.field public final mSuppressedBubbles:Landroid/util/ArrayMap;

.field public final mSuppressedGroupKeys:Ljava/util/HashMap;

.field public mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

.field public final mVisibleLocusIds:Landroid/util/ArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleEducationController;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mVisibleLocusIds:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mEducationController:Lcom/android/wm/shell/bubbles/BubbleEducationController;

    iput-object p5, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/bubbles/BubbleOverflow;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    new-instance p5, Lcom/android/wm/shell/bubbles/BubbleData$Update;

    const/4 v0, 0x0

    invoke-direct {p5, p2, p4, v0}, Lcom/android/wm/shell/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Ljava/util/List;I)V

    iput-object p5, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget p2, p3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMaxBubbles:I

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxBubbles:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0008

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxOverflowBubbles:I

    return-void
.end method

.method public static performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final dismissAll(I)V
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p1

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide v5, -0x63cf5368d399cfebL    # -6.74166282197155E-173

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public final dismissBubbleWithKey(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public final dispatchPendingChanges()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryChanged:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->showOverflowChanged:Z

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mEducationController:Lcom/android/wm/shell/bubbles/BubbleEducationController;

    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleEducationController;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "force_hide_bubbles_user_education"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    instance-of v4, v2, Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v4, :cond_3

    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v2, :cond_3

    iget-object v2, v3, Lcom/android/wm/shell/bubbles/BubbleEducationController;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "HasSeenBubblesOnboarding"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v3, Lcom/android/wm/shell/bubbles/BubbleEducationController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "force_show_bubbles_user_education"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v1

    :goto_1
    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->shouldShowEducation:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    invoke-interface {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleData$Listener;->applyUpdate(Lcom/android/wm/shell/bubbles/BubbleData$Update;)V

    :cond_4
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/wm/shell/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    return-void
.end method

.method public final doRemove(ILjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x7

    const/16 v6, 0x9

    const/4 v7, 0x5

    const/4 v8, 0x0

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_2

    const/16 v9, 0xc

    if-eq v1, v9, :cond_2

    const/16 v9, 0xd

    if-eq v1, v9, :cond_2

    const/16 v9, 0x8

    if-eq v1, v9, :cond_2

    const/16 v9, 0x10

    if-ne v1, v9, :cond_1

    goto :goto_0

    :cond_1
    move v9, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v9, v3

    :goto_1
    move v10, v8

    :goto_2
    iget-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, -0x1

    if-ge v10, v11, :cond_4

    iget-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v11, v11, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    move v10, v12

    :goto_3
    if-ne v10, v12, :cond_10

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    if-eqz v9, :cond_c

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v11, v11, v8

    if-eqz v11, :cond_5

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v17

    const-wide v13, -0x19eeba642450c652L    # -4.58688366042441E183

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v10, :cond_7

    iget-object v11, v10, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    if-nez v11, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v11, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_7
    :goto_4
    iget-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v7, :cond_8

    sget-object v4, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_CANCEL:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-virtual {v11, v10, v4}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_5

    :cond_8
    if-ne v1, v6, :cond_9

    sget-object v4, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_GROUP_CANCEL:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-virtual {v11, v10, v4}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_5

    :cond_9
    if-ne v1, v5, :cond_a

    sget-object v4, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_NO_LONGER_BUBBLE:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-virtual {v11, v10, v4}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_5

    :cond_a
    if-ne v1, v4, :cond_b

    sget-object v4, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_BLOCKED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-virtual {v11, v10, v4}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_b
    :goto_5
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    invoke-virtual {v4, v1, v10}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbleRemoved(ILcom/android/wm/shell/bubbles/Bubble;)V

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object v10, v4, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/wm/shell/bubbles/BubbleData$Update;->showOverflowChanged:Z

    :cond_c
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v9, :cond_f

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->getSuppressedBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_d

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, -0x5d80289426f3c32cL    # -1.631982274767841E-142

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    if-eqz v4, :cond_f

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    iget-object v5, v4, Lcom/android/wm/shell/bubbles/Bubble;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v4, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    if-nez v2, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    :goto_6
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    invoke-virtual {v0, v1, v4}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbleRemoved(ILcom/android/wm/shell/bubbles/Bubble;)V

    :cond_f
    return-void

    :cond_10
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v4, v4, v8

    if-eqz v4, :cond_11

    iget-object v4, v2, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v16

    const-wide v12, -0x4576516001fbc55dL    # -1.0372929210226839E-26

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    if-nez v4, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v4, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    :goto_7
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->overflowBubble(ILcom/android/wm/shell/bubbles/Bubble;)V

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_14

    iget-boolean v4, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_13

    iput-boolean v8, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    invoke-virtual {v0, v8}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    iput-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    goto :goto_8

    :cond_13
    invoke-virtual {v0, v8}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    iput-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    :cond_14
    :goto_8
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v10, v4, :cond_15

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-boolean v3, v4, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    :cond_15
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    invoke-virtual {v4, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbleRemoved(ILcom/android/wm/shell/bubbles/Bubble;)V

    iget-boolean v4, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-nez v4, :cond_16

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget-boolean v5, v4, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/bubbles/BubbleData;->repackAll()Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, v4, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    :cond_16
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/bubbles/BubbleData;->setNewSelectedIndex(I)V

    :cond_17
    if-eq v1, v3, :cond_18

    goto :goto_9

    :cond_18
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/Bubble;->mDeleteIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_19

    goto :goto_9

    :cond_19
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send delete intent for bubble with key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bubbles"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void
.end method

.method public final doSuppress(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v6, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, 0x551f27ddb7133fc0L    # 1.0903261782988566E102

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressBubble(Z)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    if-eq v4, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setNewSelectedIndex(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final doUnsuppress(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v6, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x7bf86039640dcad5L    # -3.030190235239259E-289

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressBubble(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->repackAll()Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setNewSelectedIndex(I)V

    :cond_2
    return-void
.end method

.method public getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getSuppressedBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBubbleWithView(Landroid/view/View;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOrCreateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    const/4 v2, 0x1

    iput-boolean v2, p2, Lcom/android/wm/shell/bubbles/BubbleData$Update;->showOverflowChanged:Z

    :cond_1
    move-object p2, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/bubbles/Bubble;

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    new-instance p2, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mCancelledListener:Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMainExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p2, p1, v1, v2, v3}, Lcom/android/wm/shell/bubbles/Bubble;-><init>(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;Ljava/util/concurrent/Executor;)V

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/Bubble;->setEntry(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOverflowBubbles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPendingBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSuppressedBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasAnyBubbleWithKey(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final hasBubbleInStackWithKey(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasOverflowBubbleWithKey(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSummarySuppressed(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final overflowBubble(ILcom/android/wm/shell/bubbles/Bubble;)V
    .locals 11

    iget-boolean v0, p2, Lcom/android/wm/shell/bubbles/Bubble;->mPendingIntentCanceled:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    const/16 v1, 0xf

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, 0x180ac3f7846d3b81L    # 7.333107926041777E-193

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v2, :cond_2

    sget-object p1, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_ADD_AGED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-virtual {v3, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_ADD_USER_GESTURE:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-virtual {v3, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    sget-object p1, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_RECOVER:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-virtual {v3, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-boolean v0, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->showOverflowChanged:Z

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v4, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    iget-object p1, p2, Lcom/android/wm/shell/bubbles/Bubble;->mInflationTask:Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxOverflowBubbles:I

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v5, -0x5716737d20a0c5dcL

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbleRemoved(ILcom/android/wm/shell/bubbles/Bubble;)V

    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_MAX_REACHED:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-virtual {v3, p2, v0}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    :cond_8
    :goto_2
    return-void
.end method

.method public final removeBubblesWithPackageName(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/bubbles/BubbleData;I)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final repackAll()Z
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final setExpanded(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public final setExpandedInternal(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide v3, 0x6b8325acf0ce376fL    # 7.868493510481323E209

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v3, "Bubbles"

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    if-nez v2, :cond_2

    const-string p0, "Attempt to expand stack when empty!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-nez v2, :cond_3

    const-string p0, "Attempt to expand stack without selected bubble!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Overflow"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_4
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    instance-of v3, v2, Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    check-cast v3, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda7;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/wm/shell/bubbles/Bubble;->mLastAccessed:J

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    :cond_5
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget-boolean v3, v2, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->repackAll()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v2, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iget-boolean v3, v2, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->repackAll()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v2, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-boolean v0, v2, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    :cond_7
    :goto_0
    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mNeedsTrimming:Z

    if-eqz v2, :cond_8

    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mNeedsTrimming:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->trim()V

    :cond_8
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    return-void
.end method

.method public setMaxOverflowBubbles(I)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxOverflowBubbles:I

    return-void
.end method

.method public final setNewSelectedIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Bubbles list empty when attempting to select index: "

    const-string v0, "Bubbles"

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    return-void
.end method

.method public final setSelectedBubbleAndExpandStack(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public final setSelectedBubbleFromLauncher(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, 0x13da3b7019e23f25L    # 4.870095194274147E-213

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    const-string v2, "Overflow"

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot select bubble which doesn\'t exist! ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") bubbles="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    move-object v2, p1

    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    check-cast v3, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda7;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/wm/shell/bubbles/Bubble;->mLastAccessed:J

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    :cond_5
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    return-void
.end method

.method public final setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x704ea505d1b6c489L

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const-string v2, "Overflow"

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot select bubble which doesn\'t exist! ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") bubbles="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-eqz v3, :cond_5

    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    move-object v3, p1

    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    check-cast v4, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda7;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/wm/shell/bubbles/Bubble;->mLastAccessed:J

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    :cond_5
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v2, :cond_6

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    return-void
.end method

.method public setTimeSource(Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    return-void
.end method

.method public final trim()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxBubbles:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxBubbles:I

    sub-int/2addr v0, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda1;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1, v0}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda9;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
