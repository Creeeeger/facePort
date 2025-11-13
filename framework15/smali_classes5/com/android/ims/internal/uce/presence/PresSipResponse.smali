.class public Lcom/android/ims/internal/uce/presence/PresSipResponse;
.super Ljava/lang/Object;
.source "PresSipResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresSipResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

.field private blacklist mReasonHeader:Ljava/lang/String;

.field private greylist-max-o mReasonPhrase:Ljava/lang/String;

.field private greylist-max-o mRequestId:I

.field private greylist-max-o mRetryAfter:I

.field private greylist-max-o mSipResponseCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresSipResponse$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresSipResponse$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonHeader:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonHeader:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSipResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresSipResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSipResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r getCmdId()Lcom/android/ims/internal/uce/presence/PresCmdId;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    return-object v0
.end method

.method public blacklist getReasonHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonHeader:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getReasonPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getRequestId()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    return v0
.end method

.method public greylist-max-r getRetryAfter()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    return v0
.end method

.method public greylist-max-r getSipResponseCode()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    const-class v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/presence/PresCmdId;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonHeader:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setCmdId(Lcom/android/ims/internal/uce/presence/PresCmdId;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    return-void
.end method

.method public blacklist setReasonHeader(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonHeader:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setReasonPhrase(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setRequestId(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    return-void
.end method

.method public greylist-max-r setRetryAfter(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    return-void
.end method

.method public greylist-max-r setSipResponseCode(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mSipResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mCmdId:Lcom/android/ims/internal/uce/presence/PresCmdId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mRetryAfter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresSipResponse;->mReasonHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
