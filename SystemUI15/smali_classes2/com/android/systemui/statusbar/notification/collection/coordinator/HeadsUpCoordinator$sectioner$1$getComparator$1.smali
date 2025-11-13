.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$sectioner$1$getComparator$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$sectioner$1$getComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    const-string p1, "HeadsUp"

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$sectioner$1$getComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$getMHeadsUpManager$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p2

    check-cast p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    move-result-object p1

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    move-result-object p0

    if-eqz p1, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->compareTo(Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;)I

    move-result p0

    goto :goto_4

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    if-nez p0, :cond_4

    move v0, v1

    :cond_4
    invoke-static {p1, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    goto :goto_4

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    move p0, v1

    goto :goto_3

    :cond_6
    move p0, v0

    :goto_3
    if-nez p2, :cond_7

    move v0, v1

    :cond_7
    invoke-static {p0, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    :goto_4
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$sectioner$1$getComparator$1;->compare(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I

    move-result p0

    return p0
.end method
