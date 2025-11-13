.class public Landroid/hardware/location/ContextHubInfo;
.super Ljava/lang/Object;
.source "ContextHubInfo.java"

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
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mChreApiMajorVersion:B

.field private greylist-max-o mChreApiMinorVersion:B

.field private greylist-max-o mChrePatchVersion:S

.field private greylist-max-o mChrePlatformId:J

.field private greylist-max-o mId:I

.field private greylist-max-o mMaxPacketLengthBytes:I

.field private greylist-max-o mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mPeakMips:F

.field private greylist-max-o mPeakPowerDrawMw:F

.field private greylist-max-o mPlatformVersion:I

.field private greylist-max-o mSleepPowerDrawMw:F

.field private greylist-max-o mStoppedPowerDrawMw:F

.field private greylist-max-o mSupportedSensors:[I

.field private blacklist mSupportsReliableMessages:Z

.field private greylist-max-o mToolchain:Ljava/lang/String;

.field private greylist-max-o mToolchainVersion:I

.field private greylist-max-o mVendor:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/location/ContextHubInfo$1;

    invoke-direct {v0}, Landroid/hardware/location/ContextHubInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/location/ContextHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/contexthub/ContextHubInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/hardware/contexthub/ContextHubInfo;->id:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    iget-object v0, p1, Landroid/hardware/contexthub/ContextHubInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    iget-object v0, p1, Landroid/hardware/contexthub/ContextHubInfo;->vendor:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    iget-object v0, p1, Landroid/hardware/contexthub/ContextHubInfo;->toolchain:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    iget v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->peakMips:F

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    iget v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->maxSupportedMessageLengthBytes:I

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessageImplementation()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->supportsReliableMessages:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    iget-wide v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->chrePlatformId:J

    iput-wide v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    iget-byte v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMajorVersion:B

    iput-byte v1, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    iget-byte v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMinorVersion:B

    iput-byte v1, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    iget-char v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->chrePatchVersion:C

    int-to-short v1, v1

    iput-short v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    new-array v0, v0, [Landroid/hardware/location/MemoryRegion;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    iget-object v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    iget-object v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    iget-object v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    iget-wide v1, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    iput-wide v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    iget-byte v1, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    iput-byte v1, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    iget-byte v1, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    iput-byte v1, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    iget-short v1, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    iput-short v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    new-array v0, v0, [Landroid/hardware/location/MemoryRegion;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    sget-object v1, Landroid/hardware/location/MemoryRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/location/MemoryRegion;

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/ContextHubInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    const-wide v0, 0x10500000001L

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000002L

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10900000003L

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10900000004L

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10500000005L

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000006L

    invoke-virtual {p0}, Landroid/hardware/location/ContextHubInfo;->getStaticSwVersion()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000007L

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10300000008L

    iget-wide v2, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10200000009L

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x1020000000aL

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x1020000000bL

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x1020000000cL

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x1050000000dL

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1050000000eL

    iget-boolean v2, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    instance-of v2, p1, Landroid/hardware/location/ContextHubInfo;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getVendor()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getToolchain()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getToolchainVersion()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getStaticSwVersion()I

    move-result v3

    invoke-virtual {p0}, Landroid/hardware/location/ContextHubInfo;->getStaticSwVersion()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getChrePlatformId()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getPeakMips()F

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getStoppedPowerDrawMw()F

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getSleepPowerDrawMw()F

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getPeakPowerDrawMw()F

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getMaxPacketLengthBytes()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    if-ne v3, v4, :cond_2

    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->supportsReliableMessages()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getSupportedSensors()[I

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getMemoryRegions()[Landroid/hardware/location/MemoryRegion;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_3
    return v1
.end method

.method public whitelist getChreApiMajorVersion()B
    .locals 1

    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    return v0
.end method

.method public whitelist getChreApiMinorVersion()B
    .locals 1

    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    return v0
.end method

.method public whitelist getChrePatchVersion()S
    .locals 1

    iget-short v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    return v0
.end method

.method public whitelist getChrePlatformId()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    return-wide v0
.end method

.method public whitelist getId()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    return v0
.end method

.method public whitelist getMaxPacketLengthBytes()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    return v0
.end method

.method public whitelist getMemoryRegions()[Landroid/hardware/location/MemoryRegion;
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/location/MemoryRegion;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPeakMips()F
    .locals 1

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    return v0
.end method

.method public whitelist getPeakPowerDrawMw()F
    .locals 1

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    return v0
.end method

.method public whitelist getPlatformVersion()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    return v0
.end method

.method public whitelist getSleepPowerDrawMw()F
    .locals 1

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    return v0
.end method

.method public whitelist getStaticSwVersion()I
    .locals 2

    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-byte v1, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-short v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getStoppedPowerDrawMw()F
    .locals 1

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    return v0
.end method

.method public whitelist getSupportedSensors()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    iget-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getToolchain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getToolchainVersion()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    return v0
.end method

.method public whitelist getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist supportsReliableMessages()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ID/handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tVendor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Toolchain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Toolchain version: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tPlatformVersion : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SwVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v3, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    invoke-static {v2}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CHRE platform ID: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tPeakMips : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", StoppedPowerDraw : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", PeakPowerDraw : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MaxPacketLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SupportsReliableMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-short v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportsReliableMessages:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
