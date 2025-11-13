.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final mAudioManager:Landroid/media/AudioManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public forceVolumeControlStream(I)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    return-void
.end method

.method public getDevicesForStream(I)I
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result p0

    return p0
.end method

.method public getFineVolume(II)I
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->getFineVolume(II)I

    move-result p0

    return p0
.end method

.method public getPinAppName(I)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPinAppName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPinDeviceName(I)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRingerModeInternal()I
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p0

    return p0
.end method

.method public getStreamMinVolumeInt(I)I
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result p0

    return p0
.end method

.method public isMicrophoneMute()Z
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result p0

    return p0
.end method

.method public isSafeMediaVolumeDeviceOn(I)Z
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isSafeMediaVolumeDeviceOn(I)Z

    move-result p0

    return p0
.end method

.method public semGetFineVolume(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->semGetFineVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    return p0
.end method

.method public semGetPinDevice()I
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result p0

    return p0
.end method

.method public semSetFineVolume(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioManager;->semSetFineVolume(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method public setFineVolume(IIII)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioManager;->setFineVolume(IIII)V

    return-void
.end method

.method public setRingerModeInternal(I)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    return-void
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V

    return-void
.end method

.method public shouldShowRingtoneVolume()Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
