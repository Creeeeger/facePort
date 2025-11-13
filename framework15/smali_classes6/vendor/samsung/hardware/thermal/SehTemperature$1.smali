.class Lvendor/samsung/hardware/thermal/SehTemperature$1;
.super Ljava/lang/Object;
.source "SehTemperature.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/thermal/SehTemperature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/samsung/hardware/thermal/SehTemperature;",
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

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/thermal/SehTemperature$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/thermal/SehTemperature;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/thermal/SehTemperature;
    .locals 1

    new-instance v0, Lvendor/samsung/hardware/thermal/SehTemperature;

    invoke-direct {v0}, Lvendor/samsung/hardware/thermal/SehTemperature;-><init>()V

    invoke-virtual {v0, p1}, Lvendor/samsung/hardware/thermal/SehTemperature;->readFromParcel(Landroid/os/Parcel;)V

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

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/thermal/SehTemperature$1;->newArray(I)[Lvendor/samsung/hardware/thermal/SehTemperature;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lvendor/samsung/hardware/thermal/SehTemperature;
    .locals 1

    new-array v0, p1, [Lvendor/samsung/hardware/thermal/SehTemperature;

    return-object v0
.end method
