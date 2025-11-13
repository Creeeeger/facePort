.class public final Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings$1;
.super Landroid/database/DataSetObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;

    sget v0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->updateListView$2()V

    return-void
.end method
