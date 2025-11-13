.class public final synthetic Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(ILjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda4;->f$0:I

    iput-object p2, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda4;->f$0:I

    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->resetSettings()V

    return-void
.end method
