.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectionerForPriority$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectionerForPriority$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    const-string p1, "TimeOrderPriority"

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectionerForPriority$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->getTimeComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    move-result-object p0

    return-object p0
.end method

.method public isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectionerForPriority$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->access$getSettingsHelper$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getNotificationSortOrderValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectionerForPriority$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->access$isIncludedPriortyList(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectionerForPriority$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectionerForPriority$1;->getComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->access$sortChildren(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;)V

    :cond_1
    return v1
.end method
