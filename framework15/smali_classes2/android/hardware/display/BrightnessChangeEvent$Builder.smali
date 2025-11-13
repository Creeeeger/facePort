.class public Landroid/hardware/display/BrightnessChangeEvent$Builder;
.super Ljava/lang/Object;
.source "BrightnessChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/BrightnessChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mBatteryLevel:F

.field private greylist-max-o mBrightness:F

.field private blacklist mColorSampleDuration:J

.field private greylist-max-o mColorTemperature:I

.field private blacklist mColorValueBuckets:[J

.field private greylist-max-o mIsDefaultBrightnessConfig:Z

.field private greylist-max-o mIsUserSetBrightness:Z

.field private greylist-max-o mLastBrightness:F

.field private greylist-max-o mLuxTimestamps:[J

.field private greylist-max-o mLuxValues:[F

.field private greylist-max-o mNightMode:Z

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private greylist-max-o mPowerBrightnessFactor:F

.field private blacklist mReduceBrightColors:Z

.field private blacklist mReduceBrightColorsOffset:F

.field private blacklist mReduceBrightColorsStrength:I

.field private greylist-max-o mTimeStamp:J

.field private blacklist mUniqueDisplayId:Ljava/lang/String;

.field private greylist-max-o mUserId:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o build()Landroid/hardware/display/BrightnessChangeEvent;
    .locals 27

    move-object/from16 v0, p0

    new-instance v24, Landroid/hardware/display/BrightnessChangeEvent;

    move-object/from16 v1, v24

    iget v2, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mBrightness:F

    iget-wide v3, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mTimeStamp:J

    iget-object v5, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mPackageName:Ljava/lang/String;

    iget v6, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mUserId:I

    iget-object v7, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mUniqueDisplayId:Ljava/lang/String;

    iget-object v8, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLuxValues:[F

    iget-object v9, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLuxTimestamps:[J

    iget v10, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mBatteryLevel:F

    iget v11, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mPowerBrightnessFactor:F

    iget-boolean v12, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mNightMode:Z

    iget v13, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mColorTemperature:I

    iget-boolean v14, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mReduceBrightColors:Z

    iget v15, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mReduceBrightColorsStrength:I

    move-object/from16 v25, v1

    iget v1, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mReduceBrightColorsOffset:F

    move/from16 v16, v1

    iget v1, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLastBrightness:F

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mIsDefaultBrightnessConfig:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mIsUserSetBrightness:Z

    move/from16 v19, v1

    iget-object v1, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mColorValueBuckets:[J

    move-object/from16 v20, v1

    move/from16 v26, v2

    iget-wide v1, v0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mColorSampleDuration:J

    move-wide/from16 v21, v1

    const/16 v23, 0x0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct/range {v1 .. v23}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(FJLjava/lang/String;ILjava/lang/String;[F[JFFZIZIFFZZ[JJLandroid/hardware/display/BrightnessChangeEvent-IA;)V

    return-object v24
.end method

.method public greylist-max-o setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mBatteryLevel:F

    return-object p0
.end method

.method public greylist-max-o setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mBrightness:F

    return-object p0
.end method

.method public greylist-max-o setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mColorTemperature:I

    return-object p0
.end method

.method public blacklist setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mColorValueBuckets:[J

    iput-wide p2, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mColorSampleDuration:J

    return-object p0
.end method

.method public greylist-max-o setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mIsDefaultBrightnessConfig:Z

    return-object p0
.end method

.method public greylist-max-o setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLastBrightness:F

    return-object p0
.end method

.method public greylist-max-o setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLuxTimestamps:[J

    return-object p0
.end method

.method public greylist-max-o setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mLuxValues:[F

    return-object p0
.end method

.method public greylist-max-o setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mNightMode:Z

    return-object p0
.end method

.method public greylist-max-o setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mPowerBrightnessFactor:F

    return-object p0
.end method

.method public blacklist setReduceBrightColors(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mReduceBrightColors:Z

    return-object p0
.end method

.method public blacklist setReduceBrightColorsOffset(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mReduceBrightColorsOffset:F

    return-object p0
.end method

.method public blacklist setReduceBrightColorsStrength(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mReduceBrightColorsStrength:I

    return-object p0
.end method

.method public greylist-max-o setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mTimeStamp:J

    return-object p0
.end method

.method public blacklist setUniqueDisplayId(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mUniqueDisplayId:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mIsUserSetBrightness:Z

    return-object p0
.end method

.method public greylist-max-o setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .locals 0

    iput p1, p0, Landroid/hardware/display/BrightnessChangeEvent$Builder;->mUserId:I

    return-object p0
.end method
