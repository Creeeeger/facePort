.class Lcom/samsung/android/allshare/EventSync$1;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/EventSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/allshare/EventSync;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/allshare/EventSync;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1556
    new-instance v0, Lcom/samsung/android/allshare/EventSync;

    invoke-direct {v0}, Lcom/samsung/android/allshare/EventSync;-><init>()V

    .line 1558
    .local v0, "eventsync":Lcom/samsung/android/allshare/EventSync;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventSync;->mWhat:I

    .line 1559
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventSync;->mArg1:I

    .line 1560
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventSync;->mArg2:I

    .line 1561
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/allshare/EventSync;->mStr:Ljava/lang/String;

    .line 1564
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1554
    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/EventSync$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/allshare/EventSync;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/allshare/EventSync;
    .locals 1
    .param p1, "size"    # I

    .line 1568
    new-array v0, p1, [Lcom/samsung/android/allshare/EventSync;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1554
    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/EventSync$1;->newArray(I)[Lcom/samsung/android/allshare/EventSync;

    move-result-object p1

    return-object p1
.end method
