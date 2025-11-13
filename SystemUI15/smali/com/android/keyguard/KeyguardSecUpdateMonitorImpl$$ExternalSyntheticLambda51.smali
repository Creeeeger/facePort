.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda51;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda51;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda51;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda51;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    check-cast p0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/samsung/android/cover/CoverState;

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
