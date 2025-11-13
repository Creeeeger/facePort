.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;->f$0:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;->f$0:Z

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUSBRestrictionChanged(Z)V

    return-void

    :pswitch_0
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceWidgetFullscreenModeChanged(Z)V

    return-void

    :pswitch_1
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPrimaryBouncerVisibilityChanged(Z)V

    return-void

    :pswitch_2
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTableModeChanged(Z)V

    return-void

    :pswitch_3
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceUnlockOptionChanged(Z)V

    return-void

    :pswitch_4
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
