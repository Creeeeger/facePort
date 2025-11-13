.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$ongoingActivitySectioner$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$ongoingActivitySectioner$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;

    const-string p1, "OngoingActivity"

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$ongoingActivitySectioner$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->getTimeSortCoordnator()Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->getTimeComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator$ongoingActivitySectioner$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/OngoingActivityCoordinator;->getOngoingActivityHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object p0

    return-object p0
.end method

.method public isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
