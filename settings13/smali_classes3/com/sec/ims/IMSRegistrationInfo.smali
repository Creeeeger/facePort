.class public Lcom/sec/ims/IMSRegistrationInfo;
.super Ljava/lang/Object;
.source "IMSRegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/IMSRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mECMPMode:I

.field private mEPDGStatus:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mExpiryTime:I

.field private mFeatureMask:I

.field private mFeatureTags:Ljava/lang/String;

.field private mIMSCkIk:Ljava/lang/String;

.field private mLimitedMode:I

.field private mLocalProfileUri:Ljava/lang/String;

.field private mNetworkType:I

.field private mRegisterRetryOver:I

.field private mURIfromPAU:Ljava/lang/String;

.field private mURIfromPAU2nd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 252
    new-instance v0, Lcom/sec/ims/IMSRegistrationInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/IMSRegistrationInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/IMSRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/sec/ims/IMSRegistrationInfo;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    return-void
.end method

.method private final initialize()V
    .locals 3

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    .line 85
    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    const/4 v2, -0x1

    .line 86
    iput v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    .line 87
    iput v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    .line 88
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    .line 89
    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    .line 90
    iput v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    .line 91
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    .line 92
    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    .line 93
    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    .line 94
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/sec/ims/IMSRegistrationInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 211
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IMSRegistrationInfo;

    .line 213
    iget-object v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 214
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 218
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    .line 221
    :cond_1
    iget-object p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 222
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/sec/ims/IMSRegistrationInfo;->clone()Lcom/sec/ims/IMSRegistrationInfo;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 235
    iget-object p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
