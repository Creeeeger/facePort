.class Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fputmSleepy(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    const-string/jumbo v0, "sleepy"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$mupdateAllowedStates(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onFinishedWakingUp()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPostFinishedWakingUp()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onStartedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fputmSleepy(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$4;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    const-string/jumbo v0, "sleepy"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$mupdateAllowedStates(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Ljava/lang/String;Z)V

    return-void
.end method
