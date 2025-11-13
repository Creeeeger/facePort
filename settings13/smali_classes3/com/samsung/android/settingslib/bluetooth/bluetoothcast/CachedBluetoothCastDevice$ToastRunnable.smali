.class Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$ToastRunnable;
.super Ljava/lang/Object;
.source "CachedBluetoothCastDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToastRunnable"
.end annotation


# instance fields
.field mLength:I

.field mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;Ljava/lang/String;I)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$ToastRunnable;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$ToastRunnable;->mText:Ljava/lang/String;

    .line 476
    iput p3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$ToastRunnable;->mLength:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$ToastRunnable;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->-$$Nest$fgetmContext(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$ToastRunnable;->mText:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice$ToastRunnable;->mLength:I

    invoke-static {v0, v1, p0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
