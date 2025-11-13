.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator$RemoteInputActiveExtender;
.super Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator$RemoteInputActiveExtender;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinatorKt;->access$getDEBUG()Z

    move-result v0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->access$getMMainHandler$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;)Landroid/os/Handler;

    move-result-object p1

    const-string v1, "RemoteInputCoordinator"

    const-string v2, "RemoteInputActive"

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public queryShouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator$RemoteInputActiveExtender;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->access$getMNotificationRemoteInputManager$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
