.class public final Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bindEventManager:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;

.field public final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public isStatusBarExpanded:Z

.field public final notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->bindEventManager:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-void
.end method

.method public static final access$updateAnimatedImageDrawables(Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_6

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->isStatusBarExpanded:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    sget-object p1, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$2;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$3;->INSTANCE:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$3;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$4;->INSTANCE:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$4;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$5;->INSTANCE:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$5;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p1

    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v0, p1}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    :goto_2
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    goto :goto_2

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_6
    return-void
.end method
