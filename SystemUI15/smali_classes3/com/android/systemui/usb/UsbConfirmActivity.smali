.class public Lcom/android/systemui/usb/UsbConfirmActivity;
.super Lcom/android/systemui/usb/UsbDialogActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mUsbConfirmMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/usb/UsbDialogActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mUsbConfirmMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    return-void
.end method


# virtual methods
.method public final onConfirm()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->grantUidAccessPermission()V

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "UsbDialogHelper"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->setDefaultPackage()V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    :try_start_0
    iget-boolean v3, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mUsbService:Landroid/hardware/usb/IUsbManager;

    iget-object v0, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-interface {v3, v0, v4, v2}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mUsbService:Landroid/hardware/usb/IUsbManager;

    iget-object v0, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-interface {v3, v0, v4, v2}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v2, "IUsbService connection failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-boolean v3, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    if-eqz v3, :cond_3

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "device"

    iget-object v5, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "accessory"

    iget-object v5, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_3
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_1
    iget-object v0, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v2, "Unable to start activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/usb/UsbDialogActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mUsbConfirmMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    const/4 v0, 0x1

    iput v0, p1, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogType:I

    iput-object p0, p1, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

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
    iget-object v1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mUsbConfirmMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

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

    iget-object v2, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mUsbConfirmMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

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

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDialogActivity;->addAlwaysUseCheckbox()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method
