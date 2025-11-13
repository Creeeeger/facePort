.class public final Lcom/android/settingslib/bluetooth/HidProfile;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;
    }
.end annotation


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothHidHost;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/HidProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfileManager(Lcom/android/settingslib/bluetooth/HidProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/settingslib/bluetooth/HidProfile;)Landroid/bluetooth/BluetoothHidHost;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/HidProfile;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mIsProfileReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/android/settingslib/bluetooth/HidProfile;Landroid/bluetooth/BluetoothHidHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 127
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 128
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HidProfile;Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener-IA;)V

    const/4 p0, 0x4

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method public static getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I
    .locals 2

    .line 261
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    move-result v0

    const/16 v1, 0x540

    if-ne v0, v1, :cond_0

    .line 262
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_keyboard:I

    return p0

    .line 263
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    move-result v0

    const/16 v1, 0x5c0

    if-ne v0, v1, :cond_1

    .line 264
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_input_combo:I

    return p0

    .line 265
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    move-result v0

    const/16 v1, 0x580

    if-ne v0, v1, :cond_2

    .line 266
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mouse:I

    return p0

    .line 267
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorSubClass()I

    move-result v0

    const/16 v1, 0x504

    if-ne v0, v1, :cond_3

    .line 268
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_game_device:I

    return p0

    .line 269
    :cond_3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorSubClass()I

    move-result v0

    const/16 v1, 0x508

    if-ne v0, v1, :cond_4

    .line 270
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_game_device:I

    return p0

    .line 271
    :cond_4
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorSubClass()I

    move-result p0

    const/16 v0, 0x50c

    if-ne p0, v0, :cond_5

    .line 272
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_game_device:I

    return p0

    .line 274
    :cond_5
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_accessory_default:I

    return p0
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected finalize()V
    .locals 4

    const-string v0, "HidProfile"

    const-string v1, "finalize()"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    if-eqz v1, :cond_0

    .line 293
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 295
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "Error cleaning up HID proxy"

    .line 297
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 145
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHidHost;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "HidProfile"

    if-nez v2, :cond_2

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 148
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidHost;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getConnectionStatus :: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    const-string p0, "getConnectionStatus :: BluetoothProfile.STATE_DISCONNECTED (cannot find device)"

    .line 155
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    if-nez p1, :cond_0

    .line 254
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_accessory_default:I

    return p0

    .line 256
    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result p0

    return p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 210
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 211
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    move-result p1

    const/16 v0, 0x540

    if-eq p1, v0, :cond_0

    .line 212
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    move-result p0

    const/16 p1, 0x5c0

    if-ne p0, p1, :cond_1

    .line 213
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_textinput:I

    return p0

    .line 215
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_hid:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getProfileId()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    if-nez v0, :cond_0

    .line 234
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_hid_profile_summary_use_for:I

    return p0

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HidProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    .line 246
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    move-result p0

    return p0

    .line 243
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_hid_profile_summary_connected:I

    return p0

    .line 240
    :cond_2
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_hid_profile_summary_use_for:I

    return p0
.end method

.method public isEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 165
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 168
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidHost;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 1

    .line 182
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    const/16 p2, 0x64

    .line 188
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothHidHost;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothHidHost;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "HID"

    return-object p0
.end method
