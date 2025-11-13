.class Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpansionFinished()V
    .locals 2

    const-string v0, "LockScreenNotiIconCoordinator"

    const-string v1, "onExpansionFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->-$$Nest$fgetmAmbientState(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->-$$Nest$fgetmAmbientState(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setDragDownOnKeyguard(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->onLockScreenNotiStateChanged()V

    :cond_0
    return-void
.end method

.method public onExpansionReset()V
    .locals 2

    const-string v0, "LockScreenNotiIconCoordinator"

    const-string v1, "onExpansionReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->-$$Nest$fgetmAmbientState(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->-$$Nest$fgetmAmbientState(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setDragDownOnKeyguard(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->onLockScreenNotiStateChanged()V

    :cond_0
    return-void
.end method

.method public onExpansionStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->-$$Nest$mneedLockScreenExpandPanel(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LockScreenNotiIconCoordinator"

    const-string v1, "onExpansionStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->-$$Nest$fgetmAmbientState(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setDragDownOnKeyguard(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->onLockScreenNotiStateChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPulseExpansionFinished()V
    .locals 0

    return-void
.end method

.method public bridge synthetic setOverDragAmount(F)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setTransitionToFullShadeAmount(F)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setTransitionToFullShadeAmount(FZJ)V
    .locals 0

    return-void
.end method
