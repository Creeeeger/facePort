.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-void
.end method

.method public static final synthetic access$extractAllRepresentativeEntries(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lkotlin/sequences/Sequence;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;->extractAllRepresentativeEntries(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$extractAllRepresentativeEntries(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;Ljava/util/List;)Lkotlin/sequences/Sequence;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;->extractAllRepresentativeEntries(Ljava/util/List;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;->onBeforeRenderListListener(Ljava/util/List;)V

    return-void
.end method

.method private final extractAllRepresentativeEntries(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ")",
            "Lkotlin/sequences/Sequence;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$extractAllRepresentativeEntries$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$extractAllRepresentativeEntries$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    invoke-direct {p0, v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method

.method private final extractAllRepresentativeEntries(Ljava/util/List;)Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)",
            "Lkotlin/sequences/Sequence;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$extractAllRepresentativeEntries$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$extractAllRepresentativeEntries$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    move-result-object p0

    return-object p0
.end method

.method private final onBeforeRenderListListener(Ljava/util/List;)V
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

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;->extractAllRepresentativeEntries(Ljava/util/List;)Lkotlin/sequences/Sequence;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$onBeforeRenderListListener$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$onBeforeRenderListListener$1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p1

    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v0, p1}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    :cond_0
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v2, v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsGroupHeaderContainAtMark:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v5, 0x1020346

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupHeader:Landroid/view/NotificationHeaderView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v6

    :goto_1
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    array-length v2, p1

    move v7, v6

    :goto_3
    if-ge v7, v2, :cond_0

    aget-object v8, p1, v7

    iget-boolean v9, v8, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsContractedHeaderContainAtMark:Z

    if-eqz v9, :cond_8

    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v9, :cond_5

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    goto :goto_4

    :cond_5
    move-object v9, v4

    :goto_4
    if-nez v9, :cond_6

    goto :goto_6

    :cond_6
    if-eqz v1, :cond_7

    move v10, v3

    goto :goto_5

    :cond_7
    move v10, v6

    :goto_5
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    :goto_6
    iget-boolean v9, v8, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsExpandedHeaderContainAtMark:Z

    if-eqz v9, :cond_c

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v8, :cond_9

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    goto :goto_7

    :cond_9
    move-object v8, v4

    :goto_7
    if-nez v8, :cond_a

    goto :goto_9

    :cond_a
    if-eqz v1, :cond_b

    move v9, v3

    goto :goto_8

    :cond_b
    move v9, v6

    :goto_8
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;)V

    return-void
.end method
