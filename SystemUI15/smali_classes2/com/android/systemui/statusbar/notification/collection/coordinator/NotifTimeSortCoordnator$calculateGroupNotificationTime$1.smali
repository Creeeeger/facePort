.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$calculateGroupNotificationTime$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$calculateGroupNotificationTime$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$calculateGroupNotificationTime$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->access$getTime(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$calculateGroupNotificationTime$1;->invoke(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
