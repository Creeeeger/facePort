.class public Landroid/media/MediaMonitorEvent;
.super Ljava/lang/Object;
.source "MediaMonitorEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MediaMonitorEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mCustomDimensions:[Landroid/media/MediaMonitorDimension;

.field public blacklist mName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/media/MediaMonitorEvent$1;

    invoke-direct {v0}, Landroid/media/MediaMonitorEvent$1;-><init>()V

    sput-object v0, Landroid/media/MediaMonitorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaMonitorEvent;->mName:Ljava/lang/String;

    .line 48
    sget-object v0, Landroid/media/MediaMonitorDimension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/MediaMonitorDimension;

    iput-object v0, p0, Landroid/media/MediaMonitorEvent;->mCustomDimensions:[Landroid/media/MediaMonitorDimension;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 63
    iget-object v0, p0, Landroid/media/MediaMonitorEvent;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Landroid/media/MediaMonitorEvent;->mCustomDimensions:[Landroid/media/MediaMonitorDimension;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 65
    return-void
.end method
