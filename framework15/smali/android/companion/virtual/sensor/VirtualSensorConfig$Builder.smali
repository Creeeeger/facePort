.class public final Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualSensorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/VirtualSensorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist FLAG_MEMORY_FILE_DIRECT_CHANNEL_SUPPORTED:I = 0x400


# instance fields
.field private blacklist mFlags:I

.field blacklist mHighestDirectReportRateLevel:I

.field private blacklist mMaxDelay:I

.field private blacklist mMaximumRange:F

.field private blacklist mMinDelay:I

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mPower:F

.field private blacklist mResolution:F

.field private final blacklist mType:I

.field private blacklist mVendor:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mType:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Virtual sensor type must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/companion/virtual/sensor/VirtualSensorConfig;
    .locals 13

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Setting direct channel type is required for sensors with direct channel support."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-lez v0, :cond_3

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Highest direct report rate level is required for sensors with direct channel support."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    iget v3, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mType:I

    iget-object v4, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mName:Ljava/lang/String;

    iget-object v5, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mVendor:Ljava/lang/String;

    iget v6, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaximumRange:F

    iget v7, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mResolution:F

    iget v8, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mPower:F

    iget v9, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMinDelay:I

    iget v10, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaxDelay:I

    iget v11, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Landroid/companion/virtual/sensor/VirtualSensorConfig;-><init>(ILjava/lang/String;Ljava/lang/String;FFFIIILandroid/companion/virtual/sensor/VirtualSensorConfig-IA;)V

    return-object v0
.end method

.method public whitelist setDirectChannelTypesSupported(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 2

    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mFlags:I

    :goto_0
    and-int/lit8 v0, p1, -0x2

    if-gtz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TYPE_MEMORY_FILE direct channels can be supported for virtual sensors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHighestDirectReportRateLevel(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mHighestDirectReportRateLevel:I

    return-object p0
.end method

.method public whitelist setMaxDelay(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaxDelay:I

    return-object p0
.end method

.method public whitelist setMaximumRange(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMaximumRange:F

    return-object p0
.end method

.method public whitelist setMinDelay(I)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mMinDelay:I

    return-object p0
.end method

.method public whitelist setPower(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mPower:F

    return-object p0
.end method

.method public whitelist setResolution(F)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mResolution:F

    return-object p0
.end method

.method public whitelist setVendor(Ljava/lang/String;)Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;->mVendor:Ljava/lang/String;

    return-object p0
.end method
