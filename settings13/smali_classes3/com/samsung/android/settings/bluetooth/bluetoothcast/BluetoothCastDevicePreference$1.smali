.class Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothCastDevicePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference$1;->this$0:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x1f4

    .line 114
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference$1;->this$0:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->-$$Nest$fgetTAG(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference$1;->this$0:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->-$$Nest$fgetTAG(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mClickable to true"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 119
    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->-$$Nest$sfputmClickable(Z)V

    return-void
.end method
