.class Lcom/samsung/android/wifi/SemWifiSsid$1;
.super Ljava/lang/Object;
.source "SemWifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiSsid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/wifi/SemWifiSsid;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemWifiSsid;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 277
    new-instance v0, Lcom/samsung/android/wifi/SemWifiSsid;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/wifi/SemWifiSsid;-><init>(Lcom/samsung/android/wifi/SemWifiSsid-IA;)V

    .line 278
    .local v0, "ssid":Lcom/samsung/android/wifi/SemWifiSsid;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 279
    .local v1, "length":I
    new-array v2, v1, [B

    .line 280
    .local v2, "b":[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 281
    iget-object v3, v0, Lcom/samsung/android/wifi/SemWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 282
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 274
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiSsid$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemWifiSsid;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/wifi/SemWifiSsid;
    .locals 1
    .param p1, "size"    # I

    .line 287
    new-array v0, p1, [Lcom/samsung/android/wifi/SemWifiSsid;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 274
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiSsid$1;->newArray(I)[Lcom/samsung/android/wifi/SemWifiSsid;

    move-result-object p1

    return-object p1
.end method
