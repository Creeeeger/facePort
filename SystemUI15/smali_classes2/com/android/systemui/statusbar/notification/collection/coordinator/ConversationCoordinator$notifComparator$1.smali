.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notifComparator$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notifComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    const-string p1, "People"

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notifComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->access$getPeopleType(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notifComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->access$getPeopleType(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I

    move-result p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notifComparator$1;->compare(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I

    move-result p0

    return p0
.end method
