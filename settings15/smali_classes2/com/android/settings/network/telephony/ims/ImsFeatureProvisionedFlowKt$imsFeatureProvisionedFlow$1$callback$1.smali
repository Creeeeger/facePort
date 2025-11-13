.class public final Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt$imsFeatureProvisionedFlow$1$callback$1;
.super Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $capability:I

.field public final synthetic $tech:I


# direct methods
.method public constructor <init>(IILkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt$imsFeatureProvisionedFlow$1$callback$1;->$capability:I

    iput p2, p0, Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt$imsFeatureProvisionedFlow$1$callback$1;->$tech:I

    iput-object p3, p0, Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt$imsFeatureProvisionedFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFeatureProvisioningChanged(IIZ)V
    .locals 1

    iget v0, p0, Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt$imsFeatureProvisionedFlow$1$callback$1;->$capability:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt$imsFeatureProvisionedFlow$1$callback$1;->$tech:I

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt$imsFeatureProvisionedFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onRcsFeatureProvisioningChanged(IIZ)V
    .locals 0

    return-void
.end method
