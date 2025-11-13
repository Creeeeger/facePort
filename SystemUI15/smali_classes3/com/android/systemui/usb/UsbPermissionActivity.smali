.class public Lcom/android/systemui/usb/UsbPermissionActivity;
.super Lcom/android/systemui/usb/UsbDialogActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mPermissionGranted:Z

.field public final mUsbPermissionMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/usb/UsbDialogActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    iput-object p1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUsbPermissionMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    return-void
.end method


# virtual methods
.method public final onConfirm()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->grantUidAccessPermission()V

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->setDefaultPackage()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/usb/UsbDialogActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUsbPermissionMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogType:I

    iput-object p0, p1, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    return-void
.end method

.method public final onPause()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    iget-boolean v1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    iget-boolean v2, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mResponseSent:Z

    if-nez v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-boolean v3, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    if-eqz v3, :cond_0

    const-string v3, "device"

    iget-object v4, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v3, "accessory"

    iget-object v4, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    const-string v3, "permission"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mResponseSent:Z
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "UsbDialogHelper"

    const-string v1, "PendingIntent was cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/android/systemui/usb/UsbDialogActivity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/systemui/usb/UsbDialogActivity;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    iget-boolean v1, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->deviceHasAudioCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->packageHasAudioRecordingPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUsbPermissionMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    iget v1, v1, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogType:I

    if-nez v1, :cond_1

    const v1, 0x7f1313f7

    goto :goto_1

    :cond_1
    const v1, 0x7f1313f6

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    iget-object v3, v2, Lcom/android/systemui/usb/UsbDialogHelper;->mAppName:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Lcom/android/systemui/usb/UsbDialogHelper;->getDeviceDescription()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUsbPermissionMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    invoke-virtual {v2}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->getMessageId()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    iget-object v4, v3, Lcom/android/systemui/usb/UsbDialogHelper;->mAppName:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Lcom/android/systemui/usb/UsbDialogHelper;->getDeviceDescription()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/usb/UsbDialogActivity;->setAlertParams(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    iget-boolean v0, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mCanBeDefault:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDialogActivity;->addAlwaysUseCheckbox()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method
