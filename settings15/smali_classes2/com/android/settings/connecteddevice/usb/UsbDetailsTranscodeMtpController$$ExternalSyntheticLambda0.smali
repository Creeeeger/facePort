.class public final synthetic Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    iget-boolean v0, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sys.fuse.transcode_mtp"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    const-string v2, "UsbDetailsCtrlMtp"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-object v1, v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()J

    move-result-wide v1

    const-wide/16 v3, -0x2

    and-long/2addr v1, v3

    iget-object v3, v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "enable_mtp_settings"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    return-void
.end method
