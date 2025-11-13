.class public final Landroid/media/tv/DvbDeviceInfo;
.super Ljava/lang/Object;
.source "DvbDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o TAG:Ljava/lang/String; = "DvbDeviceInfo"


# instance fields
.field private final greylist-max-o mAdapterId:I

.field private final greylist-max-o mDeviceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/DvbDeviceInfo$1;

    invoke-direct {v0}, Landroid/media/tv/DvbDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/DvbDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    iput p2, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/DvbDeviceInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/DvbDeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAdapterId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    return v0
.end method

.method public whitelist getDeviceId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
