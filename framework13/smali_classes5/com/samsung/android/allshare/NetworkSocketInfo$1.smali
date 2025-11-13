.class Lcom/samsung/android/allshare/NetworkSocketInfo$1;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/NetworkSocketInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/allshare/NetworkSocketInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/allshare/NetworkSocketInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1511
    new-instance v0, Lcom/samsung/android/allshare/NetworkSocketInfo;

    invoke-direct {v0}, Lcom/samsung/android/allshare/NetworkSocketInfo;-><init>()V

    .line 1512
    .local v0, "netinfo":Lcom/samsung/android/allshare/NetworkSocketInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/NetworkSocketInfo;->mProtocol:I

    .line 1513
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/allshare/NetworkSocketInfo;->mIpAddress:Ljava/lang/String;

    .line 1514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/NetworkSocketInfo;->mPort:I

    .line 1515
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/allshare/NetworkSocketInfo;->mDeviceClass:Ljava/lang/String;

    .line 1516
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/allshare/NetworkSocketInfo;->mMacAddr:Ljava/lang/String;

    .line 1517
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1509
    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/NetworkSocketInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/allshare/NetworkSocketInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/allshare/NetworkSocketInfo;
    .locals 1
    .param p1, "arg0"    # I

    .line 1522
    new-array v0, p1, [Lcom/samsung/android/allshare/NetworkSocketInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1509
    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/NetworkSocketInfo$1;->newArray(I)[Lcom/samsung/android/allshare/NetworkSocketInfo;

    move-result-object p1

    return-object p1
.end method
