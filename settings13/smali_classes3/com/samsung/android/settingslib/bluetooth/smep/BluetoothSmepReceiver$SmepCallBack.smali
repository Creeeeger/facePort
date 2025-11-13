.class public interface abstract Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;
.super Ljava/lang/Object;
.source "BluetoothSmepReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SmepCallBack"
.end annotation


# virtual methods
.method public abstract connectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
.end method

.method public abstract updateBatteryState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation
.end method

.method public abstract updateNoiseControlState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation
.end method

.method public abstract updateTouchPadState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation
.end method
