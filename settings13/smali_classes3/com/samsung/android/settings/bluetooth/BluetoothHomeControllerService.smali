.class public final Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;
.super Landroid/app/Service;
.source "BluetoothHomeControllerService.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field private static mService:Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;


# instance fields
.field private mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mCurrentAddress:Ljava/lang/String;

.field private mCurrentCmdId:Ljava/lang/String;

.field private mCurrentCmdUuid:Ljava/lang/String;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mRegistered:Z


# direct methods
.method public static synthetic $r8$lambda$3ncbdOS3MaBe3rRhys_G67KlYxU(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->lambda$onScanningStateChanged$5(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Wzn9Z4acuOb5gnK80JVERzuU1E(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->lambda$sendErrorStatus$0(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bg_40qXLZXfTfWk4HyCrxRvaUKE(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->lambda$onProfileConnectionStateChanged$8(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BvlyGIcUWLT9rnUujZ425bi-i7Y(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->lambda$onScanningStateChanged$4(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OiOH3snUkLhrgNODno28GBBZhuo(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->lambda$onProfileConnectionStateChanged$9(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0TrHHOUgdtMzqkNXKJ1_bqJiwU(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->lambda$onDeviceBondStateChanged$7(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U3Vh2hUwR8bRfFSafeYviaO91Ck(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->lambda$onDeviceBondStateChanged$6(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XpxvfXxbDXvdVyw6Oc0isQ8UiDI(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->lambda$sendPairedList$3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y_DCFKNJecX6IwDLvsvLJQZotyc(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->lambda$sendPairedList$2(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oGPyH7k21pFA7c44IneQgO186e4(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->lambda$sendErrorStatus$1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mRegistered:Z

    return-void
.end method

.method private byteToString([B)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 233
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 234
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p1, v1

    and-int/lit16 v3, v2, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const-string v4, "0123456789abcdef"

    .line 235
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHomeControllerService()Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;
    .locals 1

    .line 117
    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mService:Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    return-object v0
.end method

.method private static synthetic lambda$onDeviceBondStateChanged$6(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothHomeControllerService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$onDeviceBondStateChanged$7(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHomeControllerService"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic lambda$onProfileConnectionStateChanged$8(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothHomeControllerService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$onProfileConnectionStateChanged$9(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHomeControllerService"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic lambda$onScanningStateChanged$4(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothHomeControllerService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$onScanningStateChanged$5(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHomeControllerService"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic lambda$sendErrorStatus$0(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothHomeControllerService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$sendErrorStatus$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHomeControllerService"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic lambda$sendPairedList$2(Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothHomeControllerService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$sendPairedList$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHomeControllerService"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public clearCurrentCmdInfo()V
    .locals 2

    const-string v0, "BluetoothHomeControllerService"

    const-string v1, "clearCurrentCmdInfo()"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdId:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdUuid:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentAddress:Ljava/lang/String;

    return-void
.end method

.method public getCurrentCmdId()Ljava/lang/String;
    .locals 2

    const-string v0, "BluetoothHomeControllerService"

    const-string v1, "getCurrentCmdId()"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdId:Ljava/lang/String;

    return-object p0
.end method

.method public onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "BluetoothHomeControllerService"

    const-string v1, "onCreate()"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 89
    :cond_0
    sput-object p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mService:Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "BluetoothHomeControllerService"

    const-string v1, "onDestroy()"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_0
    const/4 p0, 0x0

    .line 218
    sput-object p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mService:Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 9

    const/16 v0, 0xa

    const/16 v1, 0xc

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_8

    :cond_0
    const-string v2, "BluetoothHomeControllerService"

    const-string v3, "send pairing result"

    .line 309
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 313
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdId:Ljava/lang/String;

    const-string v4, "pair"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    const-string v6, "cmd_id"

    const/4 v7, 0x1

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdId:Ljava/lang/String;

    const-string v8, "unpair"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v1, :cond_2

    .line 318
    invoke-virtual {v2, v6, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    .line 320
    invoke-virtual {v2, v6, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move v3, v5

    goto :goto_2

    .line 315
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdId:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v7

    .line 323
    :goto_2
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v4, ":"

    const-string v6, "_"

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "address"

    invoke-virtual {v2, v4, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "state"

    if-ne p2, v1, :cond_5

    const/16 p2, 0x15

    .line 326
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_3

    :cond_5
    if-ne p2, v0, :cond_6

    const/16 p2, 0x14

    .line 328
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_6
    :goto_3
    new-array p1, v7, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    :goto_4
    if-ge v5, v7, :cond_7

    .line 333
    new-instance p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    invoke-direct {p2}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;-><init>()V

    const-string v0, "main"

    .line 334
    iput-object v0, p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->componentId:Ljava/lang/String;

    const-string v0, "samsungim.bluetoothsettings"

    .line 335
    iput-object v0, p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->capability:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdUuid:Ljava/lang/String;

    iput-object v0, p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->commandUuid:Ljava/lang/String;

    const-string v0, "Y"

    .line 337
    iput-object v0, p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->stateChange:Ljava/lang/String;

    const-string v0, "status"

    .line 338
    iput-object v0, p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->attribute:Ljava/lang/String;

    .line 339
    iput-object v2, p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->value:Lcom/google/gson/JsonElement;

    .line 340
    sget-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->JSON_OBJECT:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    iput-object v0, p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->valueType:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    .line 341
    aput-object p2, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 343
    :cond_7
    invoke-static {}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;->builder()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    move-result-object p2

    .line 344
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->setAttributes([Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->build()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;

    move-result-object p1

    .line 346
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService;->acquire(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Update;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda6;

    invoke-direct {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda6;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda7;-><init>()V

    .line 347
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    if-eqz v3, :cond_8

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->clearCurrentCmdInfo()V

    :cond_8
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 7

    const/4 v0, 0x2

    if-ne p3, v0, :cond_8

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_8

    :cond_0
    const-string p3, "BluetoothHomeControllerService"

    const-string v1, "send a2dp connection change result"

    .line 371
    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 375
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdId:Ljava/lang/String;

    const-string v2, "connect"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, "cmd_id"

    const/4 v5, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdId:Ljava/lang/String;

    const-string v6, "disconnect"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v0, :cond_2

    .line 380
    invoke-virtual {p3, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 382
    invoke-virtual {p3, v4, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move v1, v3

    goto :goto_2

    .line 377
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdId:Ljava/lang/String;

    invoke-virtual {p3, v4, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    .line 385
    :goto_2
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v2, ":"

    const-string v4, "_"

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "address"

    invoke-virtual {p3, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "state"

    if-ne p2, v0, :cond_5

    const/16 p2, 0x17

    .line 388
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_3

    :cond_5
    if-nez p2, :cond_6

    const/16 p2, 0x16

    .line 390
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_6
    :goto_3
    new-array p1, v5, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    :goto_4
    if-ge v3, v5, :cond_7

    .line 395
    new-instance p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    invoke-direct {p2}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;-><init>()V

    const-string v0, "main"

    .line 396
    iput-object v0, p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->componentId:Ljava/lang/String;

    const-string v0, "samsungim.bluetoothsettings"

    .line 397
    iput-object v0, p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->capability:Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdUuid:Ljava/lang/String;

    iput-object v0, p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->commandUuid:Ljava/lang/String;

    const-string v0, "Y"

    .line 399
    iput-object v0, p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->stateChange:Ljava/lang/String;

    const-string v0, "status"

    .line 400
    iput-object v0, p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->attribute:Ljava/lang/String;

    .line 401
    iput-object p3, p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->value:Lcom/google/gson/JsonElement;

    .line 402
    sget-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->JSON_OBJECT:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    iput-object v0, p2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->valueType:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    .line 403
    aput-object p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 405
    :cond_7
    invoke-static {}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;->builder()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    move-result-object p2

    .line 406
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->setAttributes([Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    move-result-object p1

    .line 407
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->build()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;

    move-result-object p1

    .line 408
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService;->acquire(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Update;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda8;

    invoke-direct {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda8;-><init>()V

    new-instance p3, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda9;

    invoke-direct {p3}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda9;-><init>()V

    .line 409
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_8

    .line 414
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->clearCurrentCmdInfo()V

    :cond_8
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 9

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdId:Ljava/lang/String;

    const-string v1, "startScan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdId:Ljava/lang/String;

    const-string v1, "stopScan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    const-string v0, "BluetoothHomeControllerService"

    if-eqz p1, :cond_1

    const-string p1, "clear cache"

    .line 245
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    goto/16 :goto_3

    :cond_1
    const-string p1, "send scan result"

    .line 248
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object p1

    .line 251
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    const/16 v1, 0x6a

    .line 254
    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v1

    .line 256
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 257
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    .line 258
    invoke-interface {v1, v4}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    const/16 v6, 0x14

    .line 260
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "state"

    invoke-virtual {v5, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    add-int/lit8 v3, v3, 0x1

    .line 261
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v5, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 262
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    const-string v8, "_"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "address"

    invoke-virtual {v5, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v5, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "alias"

    invoke-virtual {v5, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v6, -0x1

    goto :goto_1

    .line 266
    :cond_3
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothClass;->hashCode()I

    move-result v6

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cod"

    invoke-virtual {v5, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 267
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->byteToString([B)Ljava/lang/String;

    move-result-object v4

    const-string v6, "mfdata"

    invoke-virtual {v5, v6, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb

    .line 268
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "profile"

    invoke-virtual {v5, v6, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v6, "time"

    invoke-virtual {v5, v6, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    :cond_4
    const/4 p1, 0x1

    new-array v1, p1, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    :goto_2
    if-ge v2, p1, :cond_5

    .line 276
    new-instance v3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    invoke-direct {v3}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;-><init>()V

    const-string v4, "main"

    .line 277
    iput-object v4, v3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->componentId:Ljava/lang/String;

    const-string v4, "samsungim.bluetoothsettings"

    .line 278
    iput-object v4, v3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->capability:Ljava/lang/String;

    .line 279
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdUuid:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->commandUuid:Ljava/lang/String;

    const-string v4, "Y"

    .line 280
    iput-object v4, v3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->stateChange:Ljava/lang/String;

    const-string v4, "availableDeviceList"

    .line 281
    iput-object v4, v3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->attribute:Ljava/lang/String;

    .line 282
    iput-object v0, v3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->value:Lcom/google/gson/JsonElement;

    .line 283
    sget-object v4, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->STRING_ARRAY:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    iput-object v4, v3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->valueType:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    .line 284
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 286
    :cond_5
    invoke-static {}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;->builder()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    move-result-object p1

    .line 287
    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->setAttributes([Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->build()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;

    move-result-object p1

    .line 289
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService;->acquire(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Update;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda4;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda5;-><init>()V

    .line 290
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->clearCurrentCmdInfo()V

    :cond_6
    :goto_3
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public sendErrorStatus(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 121
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "cmd_id"

    .line 122
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "address"

    const-string v1, ""

    .line 123
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "state"

    invoke-virtual {v0, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const/4 p1, 0x1

    new-array p3, p1, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 128
    new-instance v2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    invoke-direct {v2}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;-><init>()V

    const-string v3, "main"

    .line 129
    iput-object v3, v2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->componentId:Ljava/lang/String;

    const-string v3, "samsungim.bluetoothsettings"

    .line 130
    iput-object v3, v2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->capability:Ljava/lang/String;

    .line 131
    iput-object p2, v2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->commandUuid:Ljava/lang/String;

    const-string v3, "Y"

    .line 132
    iput-object v3, v2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->stateChange:Ljava/lang/String;

    const-string v3, "status"

    .line 133
    iput-object v3, v2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->attribute:Ljava/lang/String;

    .line 134
    iput-object v0, v2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->value:Lcom/google/gson/JsonElement;

    .line 135
    sget-object v3, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->JSON_OBJECT:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    iput-object v3, v2, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->valueType:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    .line 136
    aput-object v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;->builder()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->setAttributes([Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->build()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;

    move-result-object p1

    .line 141
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService;->acquire(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Update;)Lio/reactivex/Single;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda0;-><init>()V

    new-instance p2, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda1;-><init>()V

    .line 142
    invoke-virtual {p0, p1, p2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public sendPairedList(Ljava/lang/String;)V
    .locals 10

    const-string v0, "BluetoothHomeControllerService"

    const-string v1, "sendPairedList"

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/16 v3, 0x6a

    .line 160
    invoke-static {v3}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v3

    .line 163
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 164
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v6, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 169
    :cond_2
    invoke-interface {v3, v5}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 170
    new-instance v6, Lcom/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    .line 171
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x17

    goto :goto_2

    :cond_3
    const/16 v7, 0x15

    .line 173
    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "state"

    invoke-virtual {v6, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    add-int/lit8 v4, v4, 0x1

    .line 174
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v6, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 175
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "address"

    invoke-virtual {v6, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v6, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "alias"

    invoke-virtual {v6, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v7, -0x1

    goto :goto_3

    .line 179
    :cond_4
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->hashCode()I

    move-result v7

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "cod"

    invoke-virtual {v6, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 180
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getManufacturerRawData()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->byteToString([B)Ljava/lang/String;

    move-result-object v5

    const-string v7, "mfdata"

    invoke-virtual {v6, v7, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xb

    .line 181
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "profile"

    invoke-virtual {v6, v7, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v7, "time"

    invoke-virtual {v6, v7, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x1

    new-array v3, v1, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    :goto_4
    if-ge v2, v1, :cond_6

    .line 190
    new-instance v4, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    invoke-direct {v4}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;-><init>()V

    const-string v5, "main"

    .line 191
    iput-object v5, v4, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->componentId:Ljava/lang/String;

    const-string v5, "samsungim.bluetoothsettings"

    .line 192
    iput-object v5, v4, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->capability:Ljava/lang/String;

    .line 193
    iput-object p1, v4, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->commandUuid:Ljava/lang/String;

    const-string v5, "Y"

    .line 194
    iput-object v5, v4, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->stateChange:Ljava/lang/String;

    const-string v5, "pairedDeviceList"

    .line 195
    iput-object v5, v4, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->attribute:Ljava/lang/String;

    .line 196
    iput-object v0, v4, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->value:Lcom/google/gson/JsonElement;

    .line 197
    sget-object v5, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;->STRING_ARRAY:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    iput-object v5, v4, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;->valueType:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityValueType;

    .line 198
    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 200
    :cond_6
    invoke-static {}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;->builder()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    move-result-object p1

    .line 201
    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->setAttributes([Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->build()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;

    move-result-object p1

    .line 203
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService;->acquire(Landroid/content/Context;Lcom/samsung/android/sdk/smartthings/headless/companionservice/Update;)Lio/reactivex/Single;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda2;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService$$ExternalSyntheticLambda3;-><init>()V

    .line 204
    invoke-virtual {p0, p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public setCurrentCmdInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "BluetoothHomeControllerService"

    const-string v1, "setCurrentCmdInfo()"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentAddress:Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdId:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothHomeControllerService;->mCurrentCmdUuid:Ljava/lang/String;

    return-void
.end method
