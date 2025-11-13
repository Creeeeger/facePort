.class public Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextActivityCalibrationAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextActivityCalibrationAttribute"


# instance fields
.field private blacklist mData:I

.field private blacklist mSpeed:F

.field private blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(IIF)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->setAttribute()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [B

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const-string v2, "activity_calibration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "activity_speed"

    iget v5, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity Status Data : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Speed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemContextActivityCalibrationAttribute"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x35

    invoke-super {p0, v2, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 4

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    const/4 v1, 0x0

    const-string v2, "SemContextActivityCalibrationAttribute"

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const-string v0, "Data of calibration is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    :goto_1
    const-string v0, "Moving Status is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
