.class public final Landroid/companion/virtual/sensor/VirtualSensorConfig;
.super Ljava/lang/Object;
.source "VirtualSensorConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DIRECT_CHANNEL_SHIFT:I = 0xa

.field private static final blacklist DIRECT_REPORT_MASK:I = 0x380

.field private static final blacklist DIRECT_REPORT_SHIFT:I = 0x7

.field private static final blacklist TAG:Ljava/lang/String; = "VirtualSensorConfig"


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mMaxDelay:I

.field private final blacklist mMaximumRange:F

.field private final blacklist mMinDelay:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPower:F

.field private final blacklist mResolution:F

.field private final blacklist mType:I

.field private final blacklist mVendor:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensorConfig$1;

    invoke-direct {v0}, Landroid/companion/virtual/sensor/VirtualSensorConfig$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;FFFIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    iput-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    iput p4, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    iput p5, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    iput p6, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    iput p7, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    iput p8, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    iput p9, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;FFFIIILandroid/companion/virtual/sensor/VirtualSensorConfig-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/companion/virtual/sensor/VirtualSensorConfig;-><init>(ILjava/lang/String;Ljava/lang/String;FFFIII)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/sensor/VirtualSensorConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/sensor/VirtualSensorConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDirectChannelTypesSupported()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    and-int/lit16 v1, v1, 0x400

    if-lez v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    and-int/lit16 v1, v1, 0x800

    if-lez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method public blacklist getFlags()I
    .locals 1

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    return v0
.end method

.method public whitelist getHighestDirectReportRateLevel()I
    .locals 2

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    and-int/lit16 v0, v0, 0x380

    shr-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method public whitelist getMaxDelay()I
    .locals 1

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    return v0
.end method

.method public whitelist getMaximumRange()F
    .locals 1

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    return v0
.end method

.method public whitelist getMinDelay()I
    .locals 1

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPower()F
    .locals 1

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    return v0
.end method

.method public whitelist getResolution()F
    .locals 1

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    return v0
.end method

.method public whitelist getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualSensorConfig{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
