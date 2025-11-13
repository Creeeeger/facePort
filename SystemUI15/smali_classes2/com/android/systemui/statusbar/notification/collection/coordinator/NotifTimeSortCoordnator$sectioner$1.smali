.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectioner$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectioner$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    const-string p1, "TimeOrder"

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectioner$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->getTimeComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    move-result-object p0

    return-object p0
.end method

.method public isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectioner$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->access$getMHeadsUpManager$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->isHeadsUpEntry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isInsignificant()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectioner$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->access$getSettingsHelper$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getNotificationSortOrderValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectioner$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectioner$1;->getComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->access$sortChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;)V

    :cond_2
    return v1
.end method
