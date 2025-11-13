.class public Lcom/samsung/android/settings/actions/ParcelableUtil;
.super Ljava/lang/Object;
.source "ParcelableUtil.java"


# direct methods
.method public static marshall(Landroid/os/Parcelable;)[B
    .locals 2

    .line 11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method public static unmarshall([B)Landroid/os/Parcel;
    .locals 3

    .line 19
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 20
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 21
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v0
.end method

.method public static unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 26
    invoke-static {p0}, Lcom/samsung/android/settings/actions/ParcelableUtil;->unmarshall([B)Landroid/os/Parcel;

    move-result-object p0

    .line 27
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .line 28
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
