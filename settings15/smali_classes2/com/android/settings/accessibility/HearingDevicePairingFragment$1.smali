.class public final Lcom/android/settings/accessibility/HearingDevicePairingFragment$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accessibility/HearingDevicePairingFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/HearingDevicePairingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/HearingDevicePairingFragment$1;->this$0:Lcom/android/settings/accessibility/HearingDevicePairingFragment;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatchScanResults(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    iget-object v1, p0, Lcom/android/settings/accessibility/HearingDevicePairingFragment$1;->this$0:Lcom/android/settings/accessibility/HearingDevicePairingFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/HearingDevicePairingFragment;->handleLeScanResult(Landroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onScanFailed(I)V
    .locals 1

    const-string p0, "BLE Scan failed with error code "

    const-string v0, "HearingDevicePairingFragment"

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/HearingDevicePairingFragment$1;->this$0:Lcom/android/settings/accessibility/HearingDevicePairingFragment;

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/HearingDevicePairingFragment;->handleLeScanResult(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method
