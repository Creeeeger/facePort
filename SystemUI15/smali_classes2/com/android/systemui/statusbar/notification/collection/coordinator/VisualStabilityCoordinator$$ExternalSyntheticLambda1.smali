.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->$r8$lambda$Wbv0Qa3RobqwwjpZN4dfbs-D_NA(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Z)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->$r8$lambda$Jo77dgERVmCoQoUUGXsXSHBkjBo(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Z)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->$r8$lambda$r3vqfX9LDhVCuTQZutuStZucPp8(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
