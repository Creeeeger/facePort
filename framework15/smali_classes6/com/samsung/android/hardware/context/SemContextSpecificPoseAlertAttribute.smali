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

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    const/16 v1, -0x5a

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    const/16 v1, 0x5a

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->setAttribute()V

    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    const/16 v1, -0x5a

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    const/16 v1, 0x5a

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->setAttribute()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    const/16 v1, -0x5a

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    const/16 v1, 0x5a

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "retention_time"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minimum_angle"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "maximum_angle"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "moving_thrs"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1c

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 5

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    const/4 v1, 0x0

    const-string v2, "SemContextSpecificPoseAlertAttribute"

    if-gez v0, :cond_0

    const-string v0, "The retention time is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    const/16 v3, -0x5a

    if-lt v0, v3, :cond_6

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    const/16 v4, 0x5a

    if-le v0, v4, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-lt v0, v3, :cond_5

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-le v0, v4, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-le v0, v3, :cond_3

    const-string v0, "The minimum angle must be less than the maximum angle."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    if-gez v0, :cond_4

    const-string v0, "The moving threshold is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    const-string v0, "The maximum angle is wrong. The angle must be between -90 and 90."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    :goto_1
    const-string v0, "The minimum angle is wrong. The angle must be between -90 and 90."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
