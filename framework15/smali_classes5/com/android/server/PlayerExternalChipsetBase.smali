.class public abstract Lcom/android/server/PlayerExternalChipsetBase;
.super Ljava/lang/Object;
.source "PlayerExternalChipsetBase.java"


# instance fields
.field protected blacklist mCmdTuneFreq:I

.field protected blacklist mIsSeekTuneing:Z

.field protected blacklist mIsSeeking:Z

.field protected blacklist mIsTuning:Z

.field protected blacklist mPreviousTuneFreq:I

.field protected blacklist mService:Lcom/android/server/FMRadioService;

.field protected blacklist mUsbDevice:Landroid/hardware/usb/UsbDevice;

.field protected blacklist mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field protected blacklist mUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field protected blacklist mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBase;->mIsSeekTuneing:Z

    iput v0, p0, Lcom/android/server/PlayerExternalChipsetBase;->mCmdTuneFreq:I

    iput v0, p0, Lcom/android/server/PlayerExternalChipsetBase;->mPreviousTuneFreq:I

    return-void
.end method


# virtual methods
.method public abstract blacklist destruct()V
.end method

.method public abstract blacklist getBand()I
.end method

.method public abstract blacklist getChannelSpacing()I
.end method

.method public abstract blacklist getCurrentRSSI()J
.end method

.method public abstract blacklist getDEConstant()I
.end method

.method public abstract blacklist getIntTuningParameter(Ljava/lang/String;I)I
.end method

.method public abstract blacklist getLongTuningParameter(Ljava/lang/String;J)J
.end method

.method public abstract blacklist getRssiThreshold()I
.end method

.method public abstract blacklist getSeekDC()I
.end method

.method public abstract blacklist getSeekQA()I
.end method

.method public abstract blacklist getSoundMode()Z
.end method

.method public abstract blacklist getStringTuningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist getTunedFrequency()I
.end method

.method public abstract blacklist getVolume()I
.end method

.method public abstract blacklist init(Landroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract blacklist initTuningParameters()V
.end method

.method public abstract blacklist isAfEnabled()Z
.end method

.method public abstract blacklist isOn()Z
.end method

.method public abstract blacklist isRdsEnabled()Z
.end method

.method public abstract blacklist muteOff()V
.end method

.method public abstract blacklist muteOn()V
.end method

.method public abstract blacklist off()Z
.end method

.method public abstract blacklist on()Z
.end method

.method public abstract blacklist searchAll()J
.end method

.method public abstract blacklist seekDown()J
.end method

.method public abstract blacklist seekUp()J
.end method

.method public abstract blacklist setAfEnable(Z)Z
.end method

.method public abstract blacklist setBand(I)Z
.end method

.method public abstract blacklist setChannelSpacing(I)Z
.end method

.method public abstract blacklist setDEConstant(I)Z
.end method

.method public abstract blacklist setIntTuningParameter(Ljava/lang/String;I)V
.end method

.method public abstract blacklist setLongTuningParameter(Ljava/lang/String;J)V
.end method

.method public abstract blacklist setRdsEnable(Z)Z
.end method

.method public abstract blacklist setRecordMode(Z)V
.end method

.method public abstract blacklist setRssiThreshold(I)V
.end method

.method public abstract blacklist setSeekDC(I)Z
.end method

.method public abstract blacklist setSeekQA(I)Z
.end method

.method public abstract blacklist setSoundMode(I)Z
.end method

.method public abstract blacklist setStringTuningParameter(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist setVolume(I)Z
.end method

.method public abstract blacklist startNotifyThread(Z)Z
.end method

.method public abstract blacklist stopNotifyThread(Z)V
.end method

.method public abstract blacklist stopSeek()Z
.end method

.method public abstract blacklist tune(I)V
.end method
