.class Lcom/samsung/android/wifi/SemMobileWipsWifiSsid$1;
.super Ljava/lang/Object;
.source "SemMobileWipsWifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    new-instance v0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;-><init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid-IA;)V

    .line 50
    .local v0, "ssid":Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 51
    .local v1, "b":[B
    iget-object v2, v0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 52
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
    .locals 1
    .param p1, "size"    # I

    .line 56
    new-array v0, p1, [Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid$1;->newArray(I)[Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    move-result-object p1

    return-object p1
.end method
