.class Lcom/sec/ims/util/NameAddr$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/util/NameAddr;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/util/NameAddr;
    .locals 1

    new-instance p0, Lcom/sec/ims/util/NameAddr;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/util/NameAddr;-><init>(Landroid/os/Parcel;I)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/ims/util/NameAddr$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/util/NameAddr;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/ims/util/NameAddr;
    .locals 0

    new-array p0, p1, [Lcom/sec/ims/util/NameAddr;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/ims/util/NameAddr$1;->newArray(I)[Lcom/sec/ims/util/NameAddr;

    move-result-object p0

    return-object p0
.end method
