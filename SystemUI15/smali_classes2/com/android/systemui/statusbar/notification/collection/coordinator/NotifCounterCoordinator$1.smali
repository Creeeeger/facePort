.class Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->-$$Nest$mupdateMoreCount(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;->-$$Nest$mupdateMaxCount(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCounterCoordinator;)V

    :goto_0
    return-void
.end method
