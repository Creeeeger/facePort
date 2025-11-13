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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    if-ltz p2, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mStartTimeMs:I

    iput p2, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mEndTimeMs:I

    iput p3, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mSpeedRate:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DynamicViewingConfiguration speedRate is less or equal than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DynamicViewingConfiguration endTimeMs is less than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DynamicViewingConfiguration startTimeMs is less than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getEndTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mEndTimeMs:I

    return v0
.end method

.method public blacklist getSpeedRate()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mSpeedRate:F

    return v0
.end method

.method public blacklist getStartTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$DynamicViewingConfiguration;->mStartTimeMs:I

    return v0
.end method
