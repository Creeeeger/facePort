.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->$list:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$2(Lkotlin/Lazy;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->invoke(Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMPostedEntries$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMPostedEntries$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMNotifPipeline$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v5, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v5, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$logicalMembersByGroup$1;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$logicalMembersByGroup$1;-><init>(Ljava/util/Map;)V

    invoke-static {v5, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v2

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v6, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v6, v2}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    :goto_1
    invoke-virtual {v6}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v6}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$groupLocationsByKey$2;

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->$list:Ljava/util/List;

    invoke-direct {v2, v6, v7}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$groupLocationsByKey$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Ljava/util/List;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMLogger$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;->logEvaluatingGroups(I)V

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_7

    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_7
    move-object v10, v9

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_3

    :cond_9
    const/4 v11, 0x0

    :goto_3
    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMLogger$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    move-result-object v10

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v10, v8, v12, v13}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;->logEvaluatingGroup(Ljava/lang/String;II)V

    if-nez v11, :cond_a

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v9, "logical-summary-missing"

    invoke-static {v6, v8, v1, v9}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-static {v6, v11}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$isGoingToShowHunStrict(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result v8

    if-nez v8, :cond_b

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v9, "logical-summary-not-heads-up"

    invoke-static {v6, v8, v1, v9}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    new-instance v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$3;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->invoke$lambda$2(Lkotlin/Lazy;)Ljava/util/Map;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$3;-><init>(Ljava/lang/Object;)V

    invoke-static {v6, v7, v8}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$findHeadsUpOverride(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v8

    if-eqz v8, :cond_c

    const-string v10, "headsUpOverride"

    goto :goto_6

    :cond_c
    const-string/jumbo v10, "undefined"

    :goto_6
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->invoke$lambda$2(Lkotlin/Lazy;)Ljava/util/Map;

    move-result-object v12

    iget-object v13, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    if-nez v8, :cond_d

    new-instance v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$4;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->invoke$lambda$2(Lkotlin/Lazy;)Ljava/util/Map;

    move-result-object v14

    invoke-direct {v8, v14}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$4;-><init>(Ljava/lang/Object;)V

    invoke-static {v6, v9, v8}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$findBestTransferChild(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v8

    if-eqz v8, :cond_d

    const-string v10, "bestChild"

    :cond_d
    if-nez v8, :cond_e

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v9, "no-transfer-target"

    invoke-static {v6, v8, v1, v9}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMPostedEntries$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Ljava/util/LinkedHashMap;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    const/4 v15, 0x1

    iput-boolean v15, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMLogger$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    move-result-object v14

    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v14, v13, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;->logSummaryMarkedInterrupted(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    if-nez v12, :cond_10

    if-eqz v9, :cond_f

    invoke-virtual {v9, v14}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->setShouldHeadsUpEver(Z)V

    move/from16 v22, v14

    goto :goto_8

    :cond_f
    new-instance v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMHeadsUpManager$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->isHeadsUpEntry(Ljava/lang/String;)Z

    move-result v18

    invoke-static {v6, v11}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$isEntryBinding(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result v19

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v9

    move-object v13, v11

    move/from16 v22, v14

    move/from16 v14, v20

    move/from16 v15, v21

    invoke-direct/range {v12 .. v19}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZ)V

    :goto_8
    const-string v12, "detached-summary-remove-heads-up"

    invoke-static {v6, v9, v1, v12}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    move/from16 v22, v14

    if-eqz v9, :cond_11

    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMLogger$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    move-result-object v12

    const-string v13, "attached-summary-transferred"

    invoke-virtual {v12, v9, v13}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;->logPostedEntryWillNotEvaluate(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Ljava/lang/String;)V

    :cond_11
    :goto_9
    check-cast v7, Ljava/lang/Iterable;

    new-instance v9, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v9, v7}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$6;

    invoke-direct {v7, v11}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$6;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-static {v9, v7}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v7

    new-instance v9, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v9, v7}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    move/from16 v15, v22

    :goto_a
    invoke-virtual {v9}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v9}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->setShouldHeadsUpEver(Z)V

    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->setShouldHeadsUpAgain(Z)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "child-heads-up-transfer-target-"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v7, v1, v12}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;Ljava/lang/String;)V

    move v15, v11

    goto :goto_a

    :cond_12
    const/4 v11, 0x1

    const-string v12, "child-heads-up-non-target"

    invoke-static {v6, v7, v1, v12}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    if-nez v15, :cond_6

    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMHeadsUpManager$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v9, v4}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->isHeadsUpEntry(Ljava/lang/String;)Z

    move-result v20

    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$isEntryBinding(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result v21

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v14, v7

    move-object v15, v8

    invoke-direct/range {v14 .. v21}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZ)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "non-posted-child-heads-up-transfer-target-"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7, v1, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutator;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMPostedEntries$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$cleanUpEntryTimes(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    return-void
.end method
