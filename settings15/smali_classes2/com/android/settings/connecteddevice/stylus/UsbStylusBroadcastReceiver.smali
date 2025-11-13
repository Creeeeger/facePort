.class public final Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mListeningToUsbEvents:Z

.field public mUsbConnectionListener:Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver$UsbStylusConnectionListener;


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "device"

    const-class v0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->hasUsbStylusFirmwareUpdateFeature(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver$UsbStylusConnectionListener;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    check-cast p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;

    invoke-static {p0, p1, p2}, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->$r8$lambda$ZdOatcqLXIcmF44uVz18yWdki64(Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;Landroid/hardware/usb/UsbDevice;Z)V

    :cond_0
    return-void
.end method
