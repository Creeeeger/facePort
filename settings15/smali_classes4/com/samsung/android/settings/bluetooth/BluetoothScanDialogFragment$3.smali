.class public final Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 2

    const-string/jumbo v0, "onFoldStateChanged: isFolded = "

    const-string v1, "BluetoothScanDialogFragment"

    invoke-static {v0, v1, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    return-void
.end method
