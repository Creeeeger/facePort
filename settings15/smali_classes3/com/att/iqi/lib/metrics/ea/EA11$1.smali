.class Lcom/att/iqi/lib/metrics/ea/EA11$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/metrics/ea/EA11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/att/iqi/lib/metrics/ea/EA11;",
        ">;"
    }
.end annotation


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/metrics/ea/EA11;
    .locals 0

    new-instance p0, Lcom/att/iqi/lib/metrics/ea/EA11;

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/metrics/ea/EA11;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/ea/EA11$1;->createFromParcel(Landroid/os/Parcel;)Lcom/att/iqi/lib/metrics/ea/EA11;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/att/iqi/lib/metrics/ea/EA11;
    .locals 0

    new-array p0, p1, [Lcom/att/iqi/lib/metrics/ea/EA11;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/att/iqi/lib/metrics/ea/EA11$1;->newArray(I)[Lcom/att/iqi/lib/metrics/ea/EA11;

    move-result-object p0

    return-object p0
.end method
