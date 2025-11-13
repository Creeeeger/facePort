.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->$r8$lambda$I0A3KrOpmuQFd1SJNSn-qj4gFJ0(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->$r8$lambda$JHdRRNXRVlFtGbEpjJAsWJ1AKqI(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
