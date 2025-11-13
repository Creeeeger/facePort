.class public final Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

.field public mDialogType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMessageId()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    iget-boolean v1, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    if-nez v1, :cond_1

    iget p0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogType:I

    if-nez p0, :cond_0

    const p0, 0x7f1313f4

    goto :goto_0

    :cond_0
    const p0, 0x7f1313f3    # 1.955001E38f

    :goto_0
    return p0

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->packageHasAudioRecordingPermission()Z

    move-result v0

    const v1, 0x7f1313f8

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->isUsbAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->packageHasAudioRecordingPermission()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->isUsbAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    iget-object v0, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getHasAudioPlayback()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->deviceHasAudioCapture()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->packageHasAudioRecordingPermission()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->isUsbAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDialogHelper;->deviceHasAudioCapture()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f1313f9

    return p0

    :cond_4
    const-string p0, "UsbAudioWarningDialogMessage"

    const-string v0, "Only shows title with empty content description!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isUsbAudioDevice()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    iget-boolean v1, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->deviceHasAudioCapture()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getHasAudioPlayback()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
