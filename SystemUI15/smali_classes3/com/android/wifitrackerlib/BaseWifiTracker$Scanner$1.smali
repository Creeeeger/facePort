.class public final Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# instance fields
.field public final synthetic this$1:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;->this$1:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;->this$1:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    iget-object p2, p2, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object p2, p2, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
    .locals 3

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;->this$1:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    iget-object v0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object v0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSuccess()V
    .locals 0

    return-void
.end method
