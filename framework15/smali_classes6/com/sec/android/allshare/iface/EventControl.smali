.class public Lcom/sec/android/allshare/iface/EventControl;
.super Ljava/lang/Object;
.source "EventControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/android/allshare/iface/EventControl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mArg1:I

.field public blacklist mArg2:I

.field public blacklist mStr:Ljava/lang/String;

.field public blacklist mWhat:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/allshare/iface/EventControl$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/EventControl$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/iface/EventControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/allshare/iface/EventControl;->mWhat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/allshare/iface/EventControl;->mArg1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/android/allshare/iface/EventControl;->mArg2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/android/allshare/iface/EventControl;->mStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
