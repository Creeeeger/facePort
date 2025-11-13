.class Lcom/sec/android/allshare/iface/EventControl$1;
.super Ljava/lang/Object;
.source "EventControl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/iface/EventControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/android/allshare/iface/EventControl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/iface/EventControl;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 113
    new-instance v0, Lcom/sec/android/allshare/iface/EventControl;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/EventControl;-><init>()V

    .line 117
    .local v0, "eventsync":Lcom/sec/android/allshare/iface/EventControl;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/iface/EventControl;->mWhat:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/iface/EventControl;->mArg1:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/iface/EventControl;->mArg2:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/allshare/iface/EventControl;->mStr:Ljava/lang/String;

    .line 129
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/iface/EventControl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/iface/EventControl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/sec/android/allshare/iface/EventControl;
    .locals 1
    .param p1, "size"    # I

    .line 137
    new-array v0, p1, [Lcom/sec/android/allshare/iface/EventControl;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/iface/EventControl$1;->newArray(I)[Lcom/sec/android/allshare/iface/EventControl;

    move-result-object p1

    return-object p1
.end method
