.class public final synthetic Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->handleUpdateState()V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mListening:Z

    iget-object v1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mSignalCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$1;

    iget-object v2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCarrierTextManager:Lcom/android/keyguard/CarrierTextManager;

    iget-object v3, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    if-eqz v0, :cond_1

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object v0, v3, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v2, Lcom/android/keyguard/CarrierTextManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Callback;

    invoke-direct {v1, v2, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/CarrierTextManager;Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    check-cast v3, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object p0, v2, Lcom/android/keyguard/CarrierTextManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/CarrierTextManager;Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
