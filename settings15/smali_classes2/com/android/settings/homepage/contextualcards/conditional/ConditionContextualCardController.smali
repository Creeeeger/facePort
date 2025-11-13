.class public final Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardController;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field public final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

.field public final mContext:Landroid/content/Context;

.field public mIsExpanded:Z

.field public mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;)V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->startMonitoringStateChange()V

    return-void
.end method


# virtual methods
.method public buildConditionalCardsWithFooterOrHeader(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mIsExpanded:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    iget-object v4, v4, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const v5, 0x7f0d01d8

    iput v5, v4, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mViewType:I

    invoke-virtual {v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_2
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-wide v3, -0x3f07961000000000L    # -99999.0

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mIsExpanded:Z

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const-string v6, "condition_footer"

    iput-object v6, v5, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mName:Ljava/lang/String;

    iput-wide v3, v5, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mRankingScore:D

    const v6, 0x7f0d01d7

    iput v6, v5, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mViewType:I

    new-instance v6, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard;

    invoke-direct {v6, v5}, Lcom/android/settings/homepage/contextualcards/ContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mIsExpanded:Z

    if-nez p0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard$Builder;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p1, v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard$Builder;->mConditionalCards:Ljava/util/List;

    const-string p1, "condition_header"

    iput-object p1, v2, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mName:Ljava/lang/String;

    iput-wide v3, v2, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mRankingScore:D

    const p1, 0x7f0d01da

    iput p1, v2, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mViewType:I

    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard;

    invoke-direct {p1, v2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard$Builder;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_3
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final onActionClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 2

    check-cast p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    iget-wide v0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mConditionId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->getController(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->onActionClick()V

    return-void
.end method

.method public final onConditionsChanged()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    new-instance v5, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;

    invoke-interface {v4}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->getId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->getController(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;)V

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getBackgroundExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-virtual {v4, v5}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "ConditionManager"

    const-string v4, "Failed to get displayable state for card, likely timeout. Skipping"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->buildConditionalCardsWithFooterOrHeader(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    invoke-interface {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;->onContextualCardUpdated(Ljava/util/Map;)V

    return-void
.end method

.method public final onDismissed(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    return-void
.end method

.method public final onPrimaryClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 3

    check-cast p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    iget-wide v1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mConditionId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->getController(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->onPrimaryClick(Landroid/content/Context;)V

    return-void
.end method

.method public final onStart()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->startMonitoringStateChange()V

    return-void
.end method

.method public final onStop()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    iget-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mIsListeningToStateChange:Z

    if-nez v0, :cond_0

    const-string p0, "ConditionManager"

    const-string v0, "Not listening to condition state changes, skipping"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    invoke-interface {v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->stopMonitoringStateChange()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mIsListeningToStateChange:Z

    :goto_1
    return-void
.end method

.method public final setCardUpdateListener(Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    return-void
.end method
