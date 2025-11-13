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

    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    .line 55
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->setAttribute()V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "data"    # I

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    .line 55
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    .line 94
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    .line 95
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->setAttribute()V

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(IIF)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "data"    # I
    .param p3, "speed"    # F

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    .line 55
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    .line 119
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    .line 120
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    .line 121
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->setAttribute()V

    .line 123
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    .line 55
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    .line 74
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 6

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, "attribute":Landroid/os/Bundle;
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 147
    .local v1, "acData":[B
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 148
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 149
    const-string v2, "activity_calibration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 150
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    const-string v5, "activity_speed"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 151
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

    .line 152
    const/16 v2, 0x35

    invoke-super {p0, v2, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 153
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 4

    .line 131
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    const/4 v1, 0x0

    const-string v2, "SemContextActivityCalibrationAttribute"

    if-ltz v0, :cond_3

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    if-ltz v0, :cond_2

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_2
    :goto_0
    const-string v0, "Data of calibration is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v1

    .line 133
    :cond_3
    :goto_1
    const-string v0, "Moving Status is wrong!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v1
.end method
