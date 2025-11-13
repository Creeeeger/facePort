.class public final Lcom/android/settingslib/bluetooth/SapProfile;
.super Ljava/lang/Object;
.source "SapProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;
    }
.end annotation


# static fields
.field static final UUIDS:[Landroid/os/ParcelUuid;


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothSap;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/SapProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfileManager(Lcom/android/settingslib/bluetooth/SapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/settingslib/bluetooth/SapProfile;)Landroid/bluetooth/BluetoothSap;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/SapProfile;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mIsProfileReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/android/settingslib/bluetooth/SapProfile;Landroid/bluetooth/BluetoothSap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 51
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/SapProfile;->UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 105
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;-><init>(Lcom/android/settingslib/bluetooth/SapProfile;Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener-IA;)V

    const/16 p0, 0xa

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected finalize()V
    .locals 4

    const-string v0, "SapProfile"

    const-string v1, "finalize()"

    .line 222
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    if-eqz v1, :cond_0

    .line 225
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 227
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "Error cleaning up SAP proxy"

    .line 229
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 123
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSap;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "SapProfile"

    if-nez v2, :cond_2

    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 127
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    .line 129
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

    .line 135
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 218
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_accesssim:I

    return p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 200
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_sap:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getProfileId()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 211
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_sap_summary:I

    return p0
.end method

.method public isEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 146
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 149
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSap;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 1

    .line 163
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    const/16 p2, 0x64

    .line 169
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothSap;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothSap;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SAP"

    return-object p0
.end method
