.class public final Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;


# instance fields
.field public currentPrivacyItems:Ljava/util/List;

.field public previousPrivacyItems:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

.field public timeLastEmpty:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->currentPrivacyItems:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->previousPrivacyItems:Ljava/util/List;

    iget-object p1, p1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->timeLastEmpty:J

    return-void
.end method

.method public static uniqueItemsMatch(Ljava/util/List;Ljava/util/List;)Z
    .locals 5

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v3, v2, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    iget v3, v3, Lcom/android/systemui/privacy/PrivacyApplication;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    invoke-virtual {v2}, Lcom/android/systemui/privacy/PrivacyType;->getPermGroupName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v2, v1, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    iget v2, v2, Lcom/android/systemui/privacy/PrivacyApplication;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyType;->getPermGroupName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 7

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SYSTEM_ICONS_LOCATION:Z

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    sget-object v3, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v2, v3, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    sget-object v3, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->onPrivacyItemsChanged(Ljava/util/List;)V

    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->currentPrivacyItems:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->uniqueItemsMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->currentPrivacyItems:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->previousPrivacyItems:Ljava/util/List;

    iget-object v0, v1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->timeLastEmpty:J

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->currentPrivacyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v2, :cond_7

    move v0, v4

    goto :goto_2

    :cond_7
    move v0, v3

    :goto_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->currentPrivacyItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    iget-object p0, v1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    move-object v2, p0

    :goto_3
    check-cast v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->removePersistentDot(Z)V

    goto :goto_5

    :cond_9
    iget-object p1, v1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f05001a

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const-string v5, "privacy"

    const-string v6, "privacy_chip_animation_enabled"

    invoke-static {v5, v6, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->currentPrivacyItems:Ljava/util/List;

    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->previousPrivacyItems:Ljava/util/List;

    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->uniqueItemsMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, v1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide p0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->timeLastEmpty:J

    sub-long/2addr v5, p0

    const-wide/16 p0, 0xbb8

    cmp-long p0, v5, p0

    if-ltz p0, :cond_b

    :cond_a
    if-eqz v0, :cond_b

    move v3, v4

    :cond_b
    new-instance p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/events/PrivacyEvent;-><init>(Z)V

    iget-object p1, v1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;->currentPrivacyItems:Ljava/util/List;

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/privacy/PrivacyChipBuilder;

    iget-object v3, v1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->context:Landroid/content/Context;

    invoke-direct {v0, v3, p1}, Lcom/android/systemui/privacy/PrivacyChipBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyChipBuilder;->joinTypes()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->context:Landroid/content/Context;

    const v3, 0x7f130d67

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->contentDescription:Ljava/lang/String;

    iget-object p1, v1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    move-object v2, p1

    :goto_4
    check-cast v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->onStatusEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    :goto_5
    return-void
.end method
