.class public final Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFlagLocationChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-boolean v1, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->update$2$1()V

    :cond_0
    return-void
.end method

.method public final onFlagMicCameraChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-boolean v1, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->update$2$1()V

    :cond_0
    return-void
.end method

.method public final onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 13

    sget-boolean v0, Lcom/android/systemui/ScRune;->QUICK_SUPPORT_LOCATION_PRIVACY_CHIP:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v6, v5, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    sget-object v7, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v6, v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, p1

    check-cast v6, Ljava/lang/Iterable;

    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v8, v7, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    iget-object v9, v5, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v8, v9, :cond_2

    iget-object v8, v7, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    iget-object v9, v5, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-wide v7, v7, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    iget-wide v9, v5, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v5, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v5}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/systemui/privacy/PrivacyItem;->timeStampRemoved:J

    const-string v5, "HeaderPrivacyIconsController"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "keepShowingItem  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->getRecentLocationPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-object v4, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/privacy/PrivacyItem;

    iget-wide v7, v7, Lcom/android/systemui/privacy/PrivacyItem;->timeStampRemoved:J

    iget-object v9, v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v9}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->UPDATE_CHIP_VISIBILITY:J

    sub-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-lez v7, :cond_6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    monitor-enter v0

    :try_start_0
    iput-object v2, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->recentLocationPrivacyList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    const-string v0, "HeaderPrivacyIconsController"

    iget-object v2, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {v2}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->getRecentLocationPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update recentLocationPrivacyList  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    monitor-enter v0

    :try_start_1
    iput-object p1, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyList:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-object v2, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->getRecentLocationPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->setPrivacyList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->getRecentLocationPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    move p1, v1

    :goto_5
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->setChipVisibility(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->getPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v3, v3, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    sget-object v4, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v3, v4, :cond_a

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->getRecentLocationPrivacyList$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-object v0, p1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->delayableUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1$onPrivacyItemsChanged$3;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1$onPrivacyItemsChanged$3;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;)V

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-wide p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->UPDATE_CHIP_VISIBILITY:J

    invoke-interface {v0, v1, p0, p1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    goto :goto_7

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-object v0, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {v0, p1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->setPrivacyList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->setChipVisibility(Z)V

    :cond_d
    :goto_7
    return-void
.end method

.method public final update$2$1()V
    .locals 1

    sget v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->updatePrivacyIconSlots()V

    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    iget-object v0, v0, Lcom/android/systemui/privacy/OngoingPrivacyChip;->privacyList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->setChipVisibility(Z)V

    return-void
.end method
