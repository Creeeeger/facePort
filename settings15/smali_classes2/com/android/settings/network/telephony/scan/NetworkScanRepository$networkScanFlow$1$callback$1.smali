.class public final Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;
.super Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $cellInfos:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $state:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;->$cellInfos:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;->$state:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;->$state:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v1, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanState;->COMPLETE:Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanState;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;->sendResult()V

    return-void
.end method

.method public final onError(I)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;->$state:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanState;->ERROR:Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanState;

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;->sendResult()V

    iget-object p0, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    const/4 p1, 0x0

    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->close(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onResults(Ljava/util/List;)V
    .locals 6

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;->$cellInfos:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/telephony/CellInfo;

    new-instance v5, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;

    invoke-direct {v5, v4}, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$CellInfoScanKey;-><init>(Landroid/telephony/CellInfo;)V

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;->sendResult()V

    return-void
.end method

.method public final sendResult()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanResult;

    iget-object v2, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;->$state:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanState;

    iget-object p0, p0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$networkScanFlow$1$callback$1;->$cellInfos:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanResult;-><init>(Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanState;Ljava/util/List;)V

    check-cast v0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
