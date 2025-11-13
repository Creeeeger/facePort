.class public final synthetic Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/CarrierTextManager;Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/CarrierTextManager;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/CarrierTextManager;->handleSetListening(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/CarrierTextManager;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierTextManager;->handleSetListening(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V

    new-instance v1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;

    invoke-interface {v0, p0}, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;->updateCarrierInfo(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
