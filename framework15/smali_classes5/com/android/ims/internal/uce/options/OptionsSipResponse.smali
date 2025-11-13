.class public Lcom/android/ims/internal/uce/options/OptionsSipResponse;
.super Ljava/lang/Object;
.source "OptionsSipResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/options/OptionsSipResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

.field private blacklist mReasonHeader:Ljava/lang/String;

.field private greylist-max-o mReasonPhrase:Ljava/lang/String;

.field private greylist-max-o mRequestId:I

.field private greylist-max-o mRetryAfter:I

.field private greylist-max-o mSipResponseCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsSipResponse$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsSipResponse$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonHeader:Ljava/lang/String;

    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonHeader:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsSipResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsSipResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCmdId()Lcom/android/ims/internal/uce/options/OptionsCmdId;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    return-object v0
.end method

.method public blacklist getReasonHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonHeader:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getReasonPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getRequestId()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    return v0
.end method

.method public greylist-max-o getRetryAfter()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    return v0
.end method

.method public greylist-max-o getSipResponseCode()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    const-class v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonHeader:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setCmdId(Lcom/android/ims/internal/uce/options/OptionsCmdId;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    return-void
.end method

.method public blacklist setReasonHeader(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonHeader:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setReasonPhrase(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setRequestId(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    return-void
.end method

.method public greylist-max-r setRetryAfter(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    return-void
.end method

.method public greylist-max-r setSipResponseCode(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
