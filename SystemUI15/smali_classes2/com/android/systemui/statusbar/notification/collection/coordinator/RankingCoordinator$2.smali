.class Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$2;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->-$$Nest$fgetmSilentNodeController(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object p0

    return-object p0
.end method

.method public isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->-$$Nest$fgetmHighPriorityProvider(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Z)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onEntriesUpdated(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->-$$Nest$fputmHasSilentEntries(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;Z)V

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->-$$Nest$fputmHasSilentEntries(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->-$$Nest$fgetmSilentHeaderController(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->-$$Nest$fgetmHasSilentEntries(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;->-$$Nest$fgetmHasMinimizedEntries(Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;)Z

    move-result p0

    or-int/2addr p0, v0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->clearAllButtonEnabled:Z

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method
