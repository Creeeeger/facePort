.class public final synthetic Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    new-instance v8, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZZ[IZ)V

    invoke-interface {p0, v8}, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;->updateCarrierInfo(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/keyguard/CarrierTextManager;

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mWakefulnessObserver:Lcom/android/keyguard/CarrierTextManager$1;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/keyguard/CarrierTextManager;

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mWakefulnessObserver:Lcom/android/keyguard/CarrierTextManager$1;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/android/keyguard/CarrierTextManager;

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/android/keyguard/CarrierTextManager;

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
