.class Lvendor/samsung/hardware/radio/sim/SehAdnRecord$1;
.super Ljava/lang/Object;
.source "SehAdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/sim/SehAdnRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/samsung/hardware/radio/sim/SehAdnRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/sim/SehAdnRecord$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/radio/sim/SehAdnRecord;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/radio/sim/SehAdnRecord;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 38
    new-instance v0, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;-><init>()V

    .line 39
    .local v0, "_aidl_out":Lvendor/samsung/hardware/radio/sim/SehAdnRecord;
    invoke-virtual {v0, p1}, Lvendor/samsung/hardware/radio/sim/SehAdnRecord;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/sim/SehAdnRecord$1;->newArray(I)[Lvendor/samsung/hardware/radio/sim/SehAdnRecord;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lvendor/samsung/hardware/radio/sim/SehAdnRecord;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 44
    new-array v0, p1, [Lvendor/samsung/hardware/radio/sim/SehAdnRecord;

    return-object v0
.end method
