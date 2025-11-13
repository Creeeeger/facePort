.class Lcom/samsung/android/allshare/EventTouch$1;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/EventTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/allshare/EventTouch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/allshare/EventTouch;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1679
    new-instance v0, Lcom/samsung/android/allshare/EventTouch;

    invoke-direct {v0}, Lcom/samsung/android/allshare/EventTouch;-><init>()V

    .line 1681
    .local v0, "eventsync":Lcom/samsung/android/allshare/EventTouch;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventTouch;->mX:I

    .line 1682
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventTouch;->mY:I

    .line 1683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventTouch;->mDX:I

    .line 1684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventTouch;->mDY:I

    .line 1685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventTouch;->mAccelLevel:I

    .line 1686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventTouch;->mFingerId:I

    .line 1687
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventTouch;->mType:I

    .line 1688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventTouch;->mDistance:I

    .line 1689
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventTouch;->mDegree:I

    .line 1690
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/allshare/EventTouch;->mStr:Ljava/lang/String;

    .line 1691
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1677
    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/EventTouch$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/allshare/EventTouch;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/allshare/EventTouch;
    .locals 1
    .param p1, "size"    # I

    .line 1695
    new-array v0, p1, [Lcom/samsung/android/allshare/EventTouch;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1677
    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/EventTouch$1;->newArray(I)[Lcom/samsung/android/allshare/EventTouch;

    move-result-object p1

    return-object p1
.end method
