.class public final Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public attached:Z

.field public coalescedKeySetAccessor:Lkotlin/jvm/functions/Function0;

.field public collectedKeySetAccessor:Lkotlin/jvm/functions/Function0;

.field public final logger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

.field public missingNotifications:Ljava/util/Set;

.field public notificationsWithoutRankings:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->logger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->notificationsWithoutRankings:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->missingNotifications:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final logNewMissingNotifications(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->collectedKeySetAccessor:Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->coalescedKeySetAccessor:Lkotlin/jvm/functions/Function0;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker$logNewMissingNotifications$newMissingNotifications$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker$logNewMissingNotifications$newMissingNotifications$1;-><init>(Ljava/util/Set;)V

    invoke-static {p1, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker$logNewMissingNotifications$newMissingNotifications$2;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker$logNewMissingNotifications$newMissingNotifications$2;-><init>(Ljava/util/Set;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->missingNotifications:Ljava/util/Set;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->maybeLogMissingNotifications(Ljava/util/Set;Ljava/util/Set;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->missingNotifications:Ljava/util/Set;

    return-void
.end method

.method public final maybeLogInconsistentRankings(Ljava/util/Set;Ljava/util/Map;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v5, p2

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    move-object v6, v3

    goto :goto_1

    :cond_3
    move-object v6, v4

    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v4, v6

    :cond_4
    if-eqz v4, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object/from16 v5, p2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "NotifCollection"

    move-object/from16 v6, p0

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->logger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    if-eqz v2, :cond_6

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v8, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logRecoveredRankings$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logRecoveredRankings$2;

    iget-object v9, v6, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v9, v3, v7, v8, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/log/LogMessageImpl;

    iput v2, v8, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v8, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move-object v10, v1

    check-cast v10, Ljava/lang/Iterable;

    sget-object v14, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logRecoveredRankings$1$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logRecoveredRankings$1$1;

    const/4 v13, 0x0

    const/16 v15, 0x1f

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v9, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    move-object v7, v4

    :goto_3
    if-eqz v7, :cond_7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker$maybeLogInconsistentRankings$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker$maybeLogInconsistentRankings$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingRankings$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingRankings$2;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v6, v3, v2, v5, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput v1, v5, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v5, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    sget-object v11, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingRankings$1$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingRankings$1$1;

    const/4 v10, 0x0

    const/16 v12, 0x1f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingRankings$4;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingRankings$4;

    invoke-virtual {v6, v3, v0, v1, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_b

    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    const-string v5, "null"

    :cond_a
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_c
    return-void
.end method

.method public final maybeLogMissingNotifications(Ljava/util/Set;Ljava/util/Set;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "NotifCollection"

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->logger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFoundNotifications$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFoundNotifications$2;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v6, v2, v4, v5, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput v1, v5, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v5, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    sget-object v11, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFoundNotifications$1$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFoundNotifications$1$1;

    const/4 v10, 0x0

    const/16 v12, 0x1f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p2, p1}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingNotifications$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingNotifications$2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p2, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, v1, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    sget-object v6, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingNotifications$1$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingNotifications$1$1;

    const/4 v5, 0x0

    const/16 v7, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_3
    return-void
.end method
