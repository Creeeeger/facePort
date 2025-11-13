.class public final Lcom/android/keyguard/CarrierTextManager$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/CarrierTextManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/CarrierTextManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager$3;->this$0:Lcom/android/keyguard/CarrierTextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActiveDataSubscriptionIdChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager$3;->this$0:Lcom/android/keyguard/CarrierTextManager;

    iget-object p1, p1, Lcom/android/keyguard/CarrierTextManager;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager$3;->this$0:Lcom/android/keyguard/CarrierTextManager;

    iget-object v0, p1, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/keyguard/CarrierTextManager;->mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logUpdateCarrierTextForReason(I)V

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager$3;->this$0:Lcom/android/keyguard/CarrierTextManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierTextManager;->updateCarrierText(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
