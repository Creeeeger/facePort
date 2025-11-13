.class Lcom/samsung/android/allshare/EventMouse$1;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/EventMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/allshare/EventMouse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/allshare/EventMouse;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1617
    new-instance v0, Lcom/samsung/android/allshare/EventMouse;

    invoke-direct {v0}, Lcom/samsung/android/allshare/EventMouse;-><init>()V

    .line 1619
    .local v0, "eventsync":Lcom/samsung/android/allshare/EventMouse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventMouse;->mType:I

    .line 1620
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventMouse;->mX:I

    .line 1621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventMouse;->mY:I

    .line 1622
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventMouse;->mDX:I

    .line 1623
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventMouse;->mDY:I

    .line 1624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/allshare/EventMouse;->mButton:I

    .line 1625
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1615
    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/EventMouse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/allshare/EventMouse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/allshare/EventMouse;
    .locals 1
    .param p1, "size"    # I

    .line 1629
    new-array v0, p1, [Lcom/samsung/android/allshare/EventMouse;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1615
    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/EventMouse$1;->newArray(I)[Lcom/samsung/android/allshare/EventMouse;

    move-result-object p1

    return-object p1
.end method
