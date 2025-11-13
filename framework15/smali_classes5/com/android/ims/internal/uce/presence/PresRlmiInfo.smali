.class public Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
.super Ljava/lang/Object;
.source "PresRlmiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresRlmiInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mFullState:Z

.field private greylist-max-o mListName:Ljava/lang/String;

.field private greylist-max-o mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

.field private greylist-max-o mRequestId:I

.field private greylist-max-o mSubscriptionExpireTime:I

.field private greylist-max-o mSubscriptionTerminatedReason:Ljava/lang/String;

.field private greylist-max-o mUri:Ljava/lang/String;

.field private greylist-max-o mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresRlmiInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getListName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getPresSubscriptionState()Lcom/android/ims/internal/uce/presence/PresSubscriptionState;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    return-object v0
.end method

.method public greylist-max-o getRequestId()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    return v0
.end method

.method public greylist-max-o getSubscriptionExpireTime()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    return v0
.end method

.method public greylist-max-o getSubscriptionTerminatedReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getVersion()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    return v0
.end method

.method public greylist-max-o isFullState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    const-class v0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setFullState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    return-void
.end method

.method public greylist-max-r setListName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setPresSubscriptionState(Lcom/android/ims/internal/uce/presence/PresSubscriptionState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    return-void
.end method

.method public greylist-max-r setRequestId(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    return-void
.end method

.method public greylist-max-r setSubscriptionExpireTime(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    return-void
.end method

.method public greylist-max-r setSubscriptionTerminatedReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mFullState:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mListName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mPresSubscriptionState:Lcom/android/ims/internal/uce/presence/PresSubscriptionState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionExpireTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->mSubscriptionTerminatedReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
