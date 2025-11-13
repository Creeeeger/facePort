.class Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice$1;
.super Ljava/lang/Object;
.source "SemWifiP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    .locals 2

    new-instance v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;-><init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice-IA;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->-$$Nest$fputmDeviceName(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->-$$Nest$fputmDeviceAddress(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->-$$Nest$fputmScreenSharingInfo(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->-$$Nest$fputmScreenSharingExtendedInfo(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->-$$Nest$fputmScreenSharingDi(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->-$$Nest$fputmDeviceIconAttr(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->-$$Nest$fputmServiceData(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->-$$Nest$fputmSupportFwInvite(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->-$$Nest$fputmStatus(Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;I)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice$1;->newArray(I)[Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    move-result-object p1

    return-object p1
.end method
