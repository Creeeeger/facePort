.class public final Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner$1;->this$0:Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner;

    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0

    return-void
.end method

.method public final onPeriodChanged(I)V
    .locals 0

    return-void
.end method

.method public final onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner$1;->this$0:Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/PartialScanner;->mReceiver:Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda4;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment;->mHandler:Lcom/samsung/android/settings/wifi/develop/homewifi/SignalMeasureFragment$MyHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public final onSuccess()V
    .locals 0

    return-void
.end method
