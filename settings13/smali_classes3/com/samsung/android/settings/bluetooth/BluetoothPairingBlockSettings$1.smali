.class Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings$1;
.super Landroid/database/DataSetObserver;
.source "BluetoothPairingBlockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;->-$$Nest$mupdateListView(Lcom/samsung/android/settings/bluetooth/BluetoothPairingBlockSettings;)V

    return-void
.end method
