.class public Lcom/android/ims/internal/uce/presence/PresCmdStatus;
.super Ljava/lang/Object;
.source "PresCmdStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresCmdStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

.field private greylist-max-o mRequestId:I

.field private greylist-max-o mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

.field private greylist-max-o mUserData:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdStatus$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdStatus$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    new-instance v0, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/StatusCode;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    new-instance v0, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/StatusCode;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    new-instance v0, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/StatusCode;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresCmdStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCmdStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCmdId()Lcom/android/ims/internal/uce/presence/PresCmdId;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    return-object v0
.end method

.method public greylist-max-o getRequestId()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mRequestId:I

    return v0
.end method

.method public greylist-max-o getStatus()Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    return-object v0
.end method

.method public greylist-max-o getUserData()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mUserData:I

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mUserData:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mRequestId:I

    const-class v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    const-class v0, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/StatusCode;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    return-void
.end method

.method public greylist-max-r setCmdId(Lcom/android/ims/internal/uce/presence/PresCmdId;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    return-void
.end method

.method public greylist-max-r setRequestId(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mRequestId:I

    return-void
.end method

.method public greylist-max-r setStatus(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    return-void
.end method

.method public greylist-max-r setUserData(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mUserData:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mUserData:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
