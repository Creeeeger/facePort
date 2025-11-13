.class public abstract Landroid/internal/framework/protobuf/nano/android/ParcelableMessageNano;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "ParcelableMessageNano.java"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/internal/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->writeToParcel(Ljava/lang/Class;Landroid/internal/framework/protobuf/nano/MessageNano;Landroid/os/Parcel;)V

    return-void
.end method
