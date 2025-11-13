.class public final Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicViewingConfiguration"
.end annotation


# instance fields
.field private blacklist mEndTimeMs:I

.field private blacklist mSpeedRate:F

.field private blacklist mStartTimeMs:I


# direct methods
.method public constructor whitelist <init>(IIF)V
    .locals 2
    .param p1, "startTimeMs"    # I
    .param p2, "endTimeMs"    # I
    .param p3, "speedRate"    # F

    .line 4163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4164
    if-ltz p1, :cond_2

    .line 4169
    if-ltz p2, :cond_1

    .line 4174
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    .line 4179
    iput p1, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mStartTimeMs:I

    .line 4180
    iput p2, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mEndTimeMs:I

    .line 4181
    iput p3, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mSpeedRate:F

    .line 4182
    return-void

    .line 4175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DynamicViewingConfiguration speedRate is less or equal than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4170
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DynamicViewingConfiguration endTimeMs is less than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4165
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DynamicViewingConfiguration startTimeMs is less than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getEndTime()I
    .locals 1

    .line 4197
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mEndTimeMs:I

    return v0
.end method

.method public blacklist getSpeedRate()F
    .locals 1

    .line 4202
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mSpeedRate:F

    return v0
.end method

.method public blacklist getStartTime()I
    .locals 1

    .line 4189
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mStartTimeMs:I

    return v0
.end method
