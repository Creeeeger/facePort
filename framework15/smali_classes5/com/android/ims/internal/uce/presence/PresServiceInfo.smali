.class public Lcom/android/ims/internal/uce/presence/PresServiceInfo;
.super Ljava/lang/Object;
.source "PresServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o UCE_PRES_MEDIA_CAP_FULL_AUDIO_AND_VIDEO:I = 0x2

.field public static final greylist-max-o UCE_PRES_MEDIA_CAP_FULL_AUDIO_ONLY:I = 0x1

.field public static final greylist-max-o UCE_PRES_MEDIA_CAP_NONE:I = 0x0

.field public static final greylist-max-o UCE_PRES_MEDIA_CAP_UNKNOWN:I = 0x3


# instance fields
.field private greylist-max-o mMediaCap:I

.field private greylist-max-o mServiceDesc:Ljava/lang/String;

.field private greylist-max-o mServiceID:Ljava/lang/String;

.field private greylist-max-o mServiceVer:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresServiceInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresServiceInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mMediaCap:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceVer:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mMediaCap:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceVer:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresServiceInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r getMediaType()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mMediaCap:I

    return v0
.end method

.method public greylist-max-r getServiceDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceDesc:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getServiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceID:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getServiceVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceVer:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceDesc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceVer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mMediaCap:I

    return-void
.end method

.method public greylist-max-o setMediaType(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mMediaCap:I

    return-void
.end method

.method public greylist-max-o setServiceDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceDesc:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setServiceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceID:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setServiceVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceVer:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mMediaCap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
