.class public final Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mDateFormat:Ljava/text/SimpleDateFormat;

.field public final mDumpLogs:Ljava/util/List;

.field public final mIndicationMap:Ljava/util/HashMap;

.field public mItemIdSeq:I

.field public final mListenerList:Ljava/util/ArrayList;

.field public final mTopItemMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mItemIdSeq:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mTopItemMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mIndicationMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mListenerList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mDumpLogs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

    if-eq v10, v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    if-eq v10, v1, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "remove e mpty"

    filled-new-array {v1, v7, v10}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%12s pos = %7s, type = %20s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    const-string v1, "remove Item"

    filled-new-array {v1, v7, v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->getIndicationList(Lcom/android/systemui/statusbar/IndicationPosition;)Ljava/util/PriorityQueue;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v10, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/IndicationEventType;I)V

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->updateTopItem(Lcom/android/systemui/statusbar/IndicationPosition;)V

    return-void

    :cond_0
    iget v9, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mItemIdSeq:I

    add-int/lit8 v1, v9, 0x1

    iput v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mItemIdSeq:I

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->getIndicationList(Lcom/android/systemui/statusbar/IndicationPosition;)Ljava/util/PriorityQueue;

    move-result-object v6

    const-wide/16 v1, -0x1

    cmp-long v1, p5, v1

    if-nez v1, :cond_2

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v10, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/IndicationEventType;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "%12s pos = %7s, type = %20s, id = %5d, text = %s"

    if-lez v1, :cond_1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "update Event"

    filled-new-array {v3, v7, v10, v1, v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v10, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/IndicationEventType;I)V

    invoke-virtual {v6, v1}, Ljava/util/PriorityQueue;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_0

    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "add Event"

    filled-new-array {v3, v7, v10, v1, v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/IndicationItem;

    const-wide/16 v13, -0x1

    move-object v8, v1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v15, p7

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/statusbar/IndicationItem;-><init>(ILcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    invoke-virtual {v6, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v1, "add T Event"

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object v15, v6

    move-object v6, v8

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%12s pos = %7s, type = %20s, id = %5d, text = %s, duration = %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/IndicationItem;

    move-object v8, v1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-wide/from16 v13, p5

    move-object v2, v15

    move/from16 v15, p7

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/statusbar/IndicationItem;-><init>(ILcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->updateTopItem(Lcom/android/systemui/statusbar/IndicationPosition;)V

    return-void
.end method

.method public final addLogs(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mDumpLogs:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mDumpLogs:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mDumpLogs:Ljava/util/List;

    const/4 v0, 0x0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    const-string p0, "OWNER_INFO"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "KeyguardSecIndicationPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p2, "KeyguardSecIndicationPolicy history"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mDumpLogs:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "  "

    invoke-static {p1, v0, p2}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getIndicationList(Lcom/android/systemui/statusbar/IndicationPosition;)Ljava/util/PriorityQueue;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mIndicationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mIndicationMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mIndicationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/PriorityQueue;

    invoke-direct {v1}, Ljava/util/PriorityQueue;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mIndicationMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mIndicationMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/PriorityQueue;

    return-object p0
.end method

.method public final removeAllIndications()V
    .locals 5

    const-string v0, "removeAll"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%12s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v1, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    filled-new-array {v0, v1}, [Lcom/android/systemui/statusbar/IndicationPosition;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->getIndicationList(Lcom/android/systemui/statusbar/IndicationPosition;)Ljava/util/PriorityQueue;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/PriorityQueue;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->updateTopItem(Lcom/android/systemui/statusbar/IndicationPosition;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateTopItem(Lcom/android/systemui/statusbar/IndicationPosition;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->getIndicationList(Lcom/android/systemui/statusbar/IndicationPosition;)Ljava/util/PriorityQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mTopItemMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/IndicationItem;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/IndicationItem;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v1, v0, :cond_1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget v2, v1, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    iget v3, v0, Lcom/android/systemui/statusbar/IndicationItem;->mItemId:I

    if-eq v2, v3, :cond_2

    :cond_1
    const-string/jumbo v2, "update top"

    filled-new-array {v2, p1, v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%12s pos = %7s, item = %s -> %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mTopItemMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/IndicationItem;->isPersistantEvent()Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/android/systemui/statusbar/IndicationItem;->mDurationTime:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/internal/operators/completable/CompletableTimer;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)V

    :cond_2
    return-void
.end method
