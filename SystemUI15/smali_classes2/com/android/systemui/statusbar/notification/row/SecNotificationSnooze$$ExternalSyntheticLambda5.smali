.class public final synthetic Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda5;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda5;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final onHeightChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda5;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda3;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda5;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
