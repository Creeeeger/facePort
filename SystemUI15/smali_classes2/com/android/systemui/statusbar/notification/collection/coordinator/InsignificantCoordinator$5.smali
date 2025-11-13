.class Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$5;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$5;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$5;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->mTimeSortCoordinator:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->getTimeComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$5;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmHeadsUpManager(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->isHeadsUpEntry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isInsignificant()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$5;->getComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mChildren:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public onEntriesUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
