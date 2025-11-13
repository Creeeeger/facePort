.class public final synthetic Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/ResetNetworkOperationBuilder;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/ResetNetworkOperationBuilder;ILjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/network/ResetNetworkOperationBuilder;

    iput p2, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/network/ResetNetworkOperationBuilder;

    iget v1, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda5;->f$1:I

    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkOperationBuilder$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ResetNetworkOperationBuilder;->resetNetworkDataUsesChina(I)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    return-void
.end method
