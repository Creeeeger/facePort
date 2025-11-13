.class public Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextSpecificPoseAlertAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextSpecificPoseAlertAttribute"


# instance fields
.field private blacklist mMaximumAngle:I

.field private blacklist mMinimumAngle:I

.field private blacklist mMovingThrs:I

.field private blacklist mRetentionTime:I


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 32
    const/16 v1, -0x5a

    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 34
    const/16 v1, 0x5a

    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 42
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->setAttribute()V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 2
    .param p1, "retentionTime"    # I
    .param p2, "minimumAngle"    # I
    .param p3, "maximumAngle"    # I
    .param p4, "movingThrs"    # I

    .line 62
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 32
    const/16 v1, -0x5a

    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 34
    const/16 v1, 0x5a

    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 36
    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 63
    iput p1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 64
    iput p2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 65
    iput p3, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 66
    iput p4, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 67
    invoke-direct {p0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->setAttribute()V

    .line 68
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    const-string v2, "retention_time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    iget v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    const-string v2, "minimum_angle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    iget v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    const-string v2, "maximum_angle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    iget v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    const-string v2, "moving_thrs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const/16 v1, 0x1c

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 103
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 6

    .line 73
    iget v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    const/4 v1, 0x0

    const-string v2, "SContextSpecificPoseAlertAttribute"

    if-gez v0, :cond_0

    .line 74
    const-string v0, "The retention time is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v1

    .line 77
    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    const/16 v3, -0x5a

    if-lt v0, v3, :cond_6

    const/16 v4, 0x5a

    if-le v0, v4, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    iget v5, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-lt v5, v3, :cond_5

    if-le v5, v4, :cond_2

    goto :goto_0

    .line 85
    :cond_2
    if-le v0, v5, :cond_3

    .line 86
    const-string v0, "The minimum angle must be less than the maximum angle."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v1

    .line 89
    :cond_3
    iget v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    if-gez v0, :cond_4

    .line 90
    const-string v0, "The moving threshold is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v1

    .line 93
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_5
    :goto_0
    const-string v0, "The maximum angle is wrong. The angle must be between -90 and 90."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v1

    .line 78
    :cond_6
    :goto_1
    const-string v0, "The minimum angle is wrong. The angle must be between -90 and 90."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return v1
.end method
