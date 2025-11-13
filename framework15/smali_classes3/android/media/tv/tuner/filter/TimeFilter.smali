.class public Landroid/media/tv/tuner/filter/TimeFilter;
.super Ljava/lang/Object;
.source "TimeFilter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private blacklist mEnable:Z

.field private blacklist mNativeContext:J


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    return-void
.end method

.method private native blacklist nativeClearTimestamp()I
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeGetSourceTime()Ljava/lang/Long;
.end method

.method private native blacklist nativeGetTimestamp()Ljava/lang/Long;
.end method

.method private native blacklist nativeSetTimestamp(J)I
.end method


# virtual methods
.method public whitelist clearTimestamp()I
    .locals 2

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeClearTimestamp()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    :cond_0
    return v0
.end method

.method public whitelist test-api close()V
    .locals 2

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeClose()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Failed to close time filter."

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public whitelist getSourceTime()J
    .locals 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeGetSourceTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getTimeStamp()J
    .locals 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeGetTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist setCurrentTimestamp(J)I
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/filter/TimeFilter;->nativeSetTimestamp(J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/TimeFilter;->mEnable:Z

    :cond_0
    return v0
.end method
