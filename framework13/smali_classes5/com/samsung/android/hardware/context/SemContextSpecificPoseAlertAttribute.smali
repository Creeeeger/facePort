.class public Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextSpecificPoseAlertAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemContextSpecificPoseAlertAttribute"


# instance fields
.field private blacklist mMaximumAngle:I

.field private blacklist mMinimumAngle:I

.field private blacklist mMovingThrs:I

.field private blacklist mRetentionTime:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 56
    const/16 v1, -0x5a

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 57
    const/16 v1, 0x5a

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->setAttribute()V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 2
    .param p1, "retentionTime"    # I
    .param p2, "minimumAngle"    # I
    .param p3, "maximumAngle"    # I
    .param p4, "movingThrs"    # I

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 56
    const/16 v1, -0x5a

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 57
    const/16 v1, 0x5a

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 91
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 92
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 93
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 94
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->setAttribute()V

    .line 96
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 56
    const/16 v1, -0x5a

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 57
    const/16 v1, 0x5a

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 72
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    const-string/jumbo v2, "retention_time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    const-string v2, "minimum_angle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    const-string v2, "maximum_angle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    const-string v2, "moving_thrs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const/16 v1, 0x1c

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 134
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 6

    .line 104
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    const/4 v1, 0x0

    const-string v2, "SemContextSpecificPoseAlertAttribute"

    if-gez v0, :cond_0

    .line 105
    const-string v0, "The retention time is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v1

    .line 108
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    const/16 v3, -0x5a

    if-lt v0, v3, :cond_6

    const/16 v4, 0x5a

    if-le v0, v4, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    iget v5, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-lt v5, v3, :cond_5

    if-le v5, v4, :cond_2

    goto :goto_0

    .line 116
    :cond_2
    if-le v0, v5, :cond_3

    .line 117
    const-string v0, "The minimum angle must be less than the maximum angle."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v1

    .line 120
    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    if-gez v0, :cond_4

    .line 121
    const-string v0, "The moving threshold is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v1

    .line 124
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_5
    :goto_0
    const-string v0, "The maximum angle is wrong. The angle must be between -90 and 90."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v1

    .line 109
    :cond_6
    :goto_1
    const-string v0, "The minimum angle is wrong. The angle must be between -90 and 90."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v1
.end method
