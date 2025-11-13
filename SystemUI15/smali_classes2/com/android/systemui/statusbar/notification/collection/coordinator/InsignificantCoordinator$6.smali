.class Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$6;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatePostChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$6;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetTAG(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStatePostChange :  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$6;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmStatusBarStateController(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    invoke-static {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$6;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmBarState(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$6;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmStatusBarStateController(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$6;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmBarState(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$6;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmStatusBarStateController(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$6;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmStatusBarStateController(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fputmBarState(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$6;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmInsiginificantHandler(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator$6;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;->-$$Nest$fgetmInsiginificantHandler(Lcom/android/systemui/statusbar/notification/collection/coordinator/InsignificantCoordinator;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method
