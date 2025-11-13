.class public Lsamsung/uwb/profile/UwbProfile;
.super Ljava/lang/Object;
.source "UwbProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsamsung/uwb/profile/UwbProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAntennaPairSelection:B

.field private mBackgroundMode:I

.field private mDeviceMacAddress:S

.field private mDeviceRole:B

.field private mDeviceType:B

.field private mDstMacAddress:[I

.field private mMultiNodeMode:B

.field private mNumOfAnchors:B

.field private mPpduConfig:B

.field private mRangingDataNtf:B

.field private mRangingDataNtfProximityFar:S

.field private mRangingDataNtfProximityNear:S

.field private mRangingInterval:S

.field private mRangingMethod:B

.field private mServiceType:I

.field private mStsConfig:B

.field private mStsIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lsamsung/uwb/profile/UwbProfile$1;

    invoke-direct {v0}, Lsamsung/uwb/profile/UwbProfile$1;-><init>()V

    sput-object v0, Lsamsung/uwb/profile/UwbProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 28
    const-class v0, Ljava/lang/Short;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceRole:B

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingMethod:B

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lsamsung/uwb/profile/UwbProfile;->mStsConfig:B

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lsamsung/uwb/profile/UwbProfile;->mMultiNodeMode:B

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lsamsung/uwb/profile/UwbProfile;->mNumOfAnchors:B

    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput-short v1, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceMacAddress:S

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lsamsung/uwb/profile/UwbProfile;->mDstMacAddress:[I

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput-short v1, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingInterval:S

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lsamsung/uwb/profile/UwbProfile;->mStsIndex:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lsamsung/uwb/profile/UwbProfile;->mPpduConfig:B

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtf:B

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput-short v1, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtfProximityNear:S

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtfProximityFar:S

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceType:B

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lsamsung/uwb/profile/UwbProfile;->mAntennaPairSelection:B

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsamsung/uwb/profile/UwbProfile;->mBackgroundMode:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lsamsung/uwb/profile/UwbProfile;->mServiceType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 67
    iget-byte p2, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceRole:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 68
    iget-byte p2, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingMethod:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 69
    iget-byte p2, p0, Lsamsung/uwb/profile/UwbProfile;->mStsConfig:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    iget-byte p2, p0, Lsamsung/uwb/profile/UwbProfile;->mMultiNodeMode:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    iget-byte p2, p0, Lsamsung/uwb/profile/UwbProfile;->mNumOfAnchors:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    iget-short p2, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceMacAddress:S

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 73
    iget-object p2, p0, Lsamsung/uwb/profile/UwbProfile;->mDstMacAddress:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 74
    iget-short p2, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingInterval:S

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 75
    iget p2, p0, Lsamsung/uwb/profile/UwbProfile;->mStsIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-byte p2, p0, Lsamsung/uwb/profile/UwbProfile;->mPpduConfig:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 77
    iget-byte p2, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtf:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    iget-short p2, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtfProximityNear:S

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 79
    iget-short p2, p0, Lsamsung/uwb/profile/UwbProfile;->mRangingDataNtfProximityFar:S

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 80
    iget-byte p2, p0, Lsamsung/uwb/profile/UwbProfile;->mDeviceType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 81
    iget-byte p2, p0, Lsamsung/uwb/profile/UwbProfile;->mAntennaPairSelection:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 82
    iget p2, p0, Lsamsung/uwb/profile/UwbProfile;->mBackgroundMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget p0, p0, Lsamsung/uwb/profile/UwbProfile;->mServiceType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
