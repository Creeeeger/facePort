.class Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo$1;
.super Ljava/lang/Object;
.source "SehCurrentNetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 26
    new-instance v0, Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;-><init>()V

    .line 27
    .local v0, "_aidl_out":Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;
    invoke-virtual {v0, p1}, Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo$1;->newArray(I)[Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 32
    new-array v0, p1, [Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;

    return-object v0
.end method
