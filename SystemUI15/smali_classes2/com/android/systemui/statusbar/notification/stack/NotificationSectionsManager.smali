.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;


# static fields
.field public static final SECTION:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;


# instance fields
.field public final alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

.field public final favoriteHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field public final incomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field public initialized:Z

.field public final notificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

.field public final ongoingActivityHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field public parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field public sectionStateProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;

.field public final sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

.field public final silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/android/systemui/statusbar/notification/SourceType;->Companion:Lcom/android/systemui/statusbar/notification/SourceType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    const-string v1, "Section"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->SECTION:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->notificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->favoriteHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->ongoingActivityHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->configurationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

    return-void
.end method

.method public static synthetic getAlertingHeaderView$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getFavoriteHeaderView$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getIncomingHeaderView$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMediaControlsView$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOngoingActivityHeaderView$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPeopleHeaderView$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSilentHeaderView$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final beginsSection(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public final getBucket(Landroid/view/View;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-ne p1, v0, :cond_0

    const/16 p0, 0xd

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-ne p1, v0, :cond_1

    const/4 p0, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-ne p1, v0, :cond_2

    const/16 p0, 0xb

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-ne p1, p0, :cond_3

    const/16 p0, 0xc

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_4

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final reinflateViews()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->reinflateView(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->hasNotifications(IZ)Z

    move-result v0

    :goto_0
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->reinflateView(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_5

    move-object v0, v1

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->reinflateView(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_6

    move-object v0, v1

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->reinflateView(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_7

    move-object v0, v1

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->favoriteHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->reinflateView(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    move-object v1, v0

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->ongoingActivityHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->reinflateView(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    return-void
.end method

.method public final updateFirstAndLastViewsForAllSections([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Ljava/util/List;)V
    .locals 13

    new-instance v0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v0, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$$inlined$groupingBy$1;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$$inlined$groupingBy$1;-><init>(Lkotlin/sequences/Sequence;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    array-length v2, p1

    if-gez v2, :cond_0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    move-object v2, v3

    :goto_0
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$$inlined$groupingBy$1;->$this_groupingBy:Lkotlin/sequences/Sequence;

    invoke-interface {v3}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$$inlined$groupingBy$1;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v6, v0

    :cond_1
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    if-eqz v7, :cond_2

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    invoke-direct {v6, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    goto :goto_3

    :cond_2
    instance-of v7, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    if-eqz v7, :cond_3

    new-instance v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    check-cast v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;->lone:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {v7, v6, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    :goto_2
    move-object v6, v7

    goto :goto_3

    :cond_3
    instance-of v7, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    if-eqz v7, :cond_4

    check-cast v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    new-instance v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;->first:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {v7, v6, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    goto :goto_2

    :goto_3
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_4
    if-ge v4, v1, :cond_7

    aget-object v5, p1, v4

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v5, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p1

    move v5, v3

    :goto_5
    if-ge v5, v4, :cond_9

    aget-object v6, p1, v5

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v6, :cond_8

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    array-length v4, p1

    move v5, v3

    move v6, v5

    :goto_6
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ge v5, v4, :cond_10

    aget-object v9, p1, v5

    iget v10, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBucket:I

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;

    if-nez v10, :cond_a

    sget-object v10, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    :cond_a
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v11, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    if-eqz v11, :cond_b

    invoke-static {v9, v8, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;->setFirstAndLastVisibleChildren(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v8

    goto :goto_7

    :cond_b
    instance-of v8, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    if-eqz v8, :cond_c

    check-cast v10, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;

    iget-object v8, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$One;->lone:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-static {v9, v8, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;->setFirstAndLastVisibleChildren(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v8

    goto :goto_7

    :cond_c
    instance-of v8, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    if-eqz v8, :cond_f

    check-cast v10, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;

    iget-object v8, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;->first:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$Many;->last:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-static {v9, v8, v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;->setFirstAndLastVisibleChildren(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v8

    :goto_7
    if-nez v8, :cond_e

    if-eqz v6, :cond_d

    goto :goto_8

    :cond_d
    move v6, v3

    goto :goto_9

    :cond_e
    :goto_8
    move v6, v7

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p1

    move v5, v3

    :goto_a
    if-ge v5, v4, :cond_12

    aget-object v6, p1, v5

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v6, :cond_11

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, p1

    move v6, v3

    :goto_b
    if-ge v6, v5, :cond_14

    aget-object v9, p1, v6

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v9, :cond_13

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->notificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v10, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->SECTION:Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    if-eqz v2, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v7

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v12

    if-eqz v12, :cond_16

    if-eqz v5, :cond_16

    move v5, v7

    goto :goto_d

    :cond_16
    move v5, v3

    :goto_d
    invoke-interface {v2, v9, v10, v5}, Lcom/android/systemui/statusbar/notification/Roundable;->requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    :cond_17
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionStateProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;

    if-eqz v5, :cond_18

    move-object v12, v5

    goto :goto_e

    :cond_18
    move-object v12, v8

    :goto_e
    if-eqz v12, :cond_15

    if-eqz v5, :cond_19

    move-object v12, v5

    goto :goto_f

    :cond_19
    move-object v12, v8

    :goto_f
    check-cast v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget v12, v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mBarState:I

    if-ne v12, v7, :cond_1a

    move v12, v7

    goto :goto_10

    :cond_1a
    move v12, v3

    :goto_10
    if-eqz v12, :cond_1d

    if-eqz v5, :cond_1b

    goto :goto_11

    :cond_1b
    move-object v5, v8

    :goto_11
    check-cast v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionStateProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;

    if-eqz v5, :cond_1c

    goto :goto_12

    :cond_1c
    move-object v5, v8

    :goto_12
    check-cast v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eq v5, v2, :cond_1d

    invoke-interface {v2, v6, v10, v3}, Lcom/android/systemui/statusbar/notification/Roundable;->requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    goto :goto_c

    :cond_1d
    if-eqz v11, :cond_15

    invoke-interface {v2, v9, v10, v3}, Lcom/android/systemui/statusbar/notification/Roundable;->requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    goto :goto_c

    :cond_1e
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v11, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v7

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v12

    if-eqz v12, :cond_20

    if-eqz v11, :cond_20

    move v11, v7

    goto :goto_14

    :cond_20
    move v11, v3

    :goto_14
    invoke-interface {v2, v9, v10, v11}, Lcom/android/systemui/statusbar/notification/Roundable;->requestBottomRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    :cond_21
    iget-object v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionStateProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;

    if-eqz v11, :cond_22

    move-object v12, v11

    goto :goto_15

    :cond_22
    move-object v12, v8

    :goto_15
    if-eqz v12, :cond_1f

    if-eqz v11, :cond_23

    move-object v12, v11

    goto :goto_16

    :cond_23
    move-object v12, v8

    :goto_16
    check-cast v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget v12, v12, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mBarState:I

    if-ne v12, v7, :cond_24

    move v12, v7

    goto :goto_17

    :cond_24
    move v12, v3

    :goto_17
    if-eqz v12, :cond_27

    if-eqz v11, :cond_25

    goto :goto_18

    :cond_25
    move-object v11, v8

    :goto_18
    check-cast v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v11

    if-eqz v11, :cond_27

    iget-object v11, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionStateProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;

    if-eqz v11, :cond_26

    goto :goto_19

    :cond_26
    move-object v11, v8

    :goto_19
    check-cast v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLastVisibleSection()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object v11

    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eq v11, v2, :cond_27

    invoke-interface {v2, v6, v10, v3}, Lcom/android/systemui/statusbar/notification/Roundable;->requestBottomRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    goto :goto_13

    :cond_27
    if-eqz v4, :cond_1f

    invoke-interface {v2, v9, v10, v3}, Lcom/android/systemui/statusbar/notification/Roundable;->requestBottomRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    goto :goto_13

    :cond_28
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    invoke-interface {p1, v6, v10, v0}, Lcom/android/systemui/statusbar/notification/Roundable;->requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    goto :goto_1a

    :cond_29
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    invoke-interface {p1, v6, v10, v0}, Lcom/android/systemui/statusbar/notification/Roundable;->requestBottomRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    goto :goto_1b

    :cond_2a
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$5;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$5;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
