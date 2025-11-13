.class public Lcom/samsung/android/settings/Booster;
.super Ljava/lang/Object;
.source "Booster.java"


# instance fields
.field private mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mContext:Landroid/content/Context;

.field private mCpuMinFreq:I

.field private mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mGpuMinFreq:I

.field private mLastBoosterDuration:J

.field private mLastBoosterTime:J

.field private mSupportedCPUFreqTable:[I

.field private mSupportedGPUFreqTable:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/samsung/android/settings/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/settings/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/samsung/android/settings/Booster;->mCpuMinFreq:I

    .line 36
    iput v0, p0, Lcom/samsung/android/settings/Booster;->mGpuMinFreq:I

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/samsung/android/settings/Booster;->mLastBoosterTime:J

    .line 40
    iput-wide v0, p0, Lcom/samsung/android/settings/Booster;->mLastBoosterDuration:J

    .line 43
    iput-object p1, p0, Lcom/samsung/android/settings/Booster;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/settings/Booster;->prepareBooster()V

    return-void
.end method

.method private prepareBooster()V
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/samsung/android/settings/Booster;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/Booster;->mSupportedCPUFreqTable:[I

    const-string v1, "Booster"

    if-nez v0, :cond_0

    const-string p0, "mSupportedCPUFreqTable is null"

    .line 54
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-le v2, v5, :cond_1

    .line 60
    aget v0, v0, v5

    iput v0, p0, Lcom/samsung/android/settings/Booster;->mCpuMinFreq:I

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    .line 62
    aget v0, v0, v3

    iput v0, p0, Lcom/samsung/android/settings/Booster;->mCpuMinFreq:I

    goto :goto_0

    .line 64
    :cond_2
    iput v4, p0, Lcom/samsung/android/settings/Booster;->mCpuMinFreq:I

    .line 66
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/Booster;->mCpuMinFreq:I

    if-lez v0, :cond_3

    .line 67
    iget-object v2, p0, Lcom/samsung/android/settings/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 69
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCpuMinFreq = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/Booster;->mCpuMinFreq:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/Booster;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x10

    invoke-static {v0, v2, v6}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 73
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/Booster;->mSupportedGPUFreqTable:[I

    if-nez v0, :cond_4

    return-void

    .line 80
    :cond_4
    array-length v2, v0

    if-le v2, v5, :cond_5

    .line 82
    aget v0, v0, v5

    iput v0, p0, Lcom/samsung/android/settings/Booster;->mGpuMinFreq:I

    goto :goto_1

    :cond_5
    if-lez v2, :cond_6

    .line 84
    aget v0, v0, v3

    iput v0, p0, Lcom/samsung/android/settings/Booster;->mGpuMinFreq:I

    goto :goto_1

    .line 86
    :cond_6
    iput v4, p0, Lcom/samsung/android/settings/Booster;->mGpuMinFreq:I

    .line 89
    :goto_1
    iget v0, p0, Lcom/samsung/android/settings/Booster;->mGpuMinFreq:I

    if-lez v0, :cond_7

    .line 90
    iget-object v2, p0, Lcom/samsung/android/settings/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 92
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGpuMinFreq = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/Booster;->mGpuMinFreq:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public start(I)V
    .locals 6

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 98
    iget-wide v2, p0, Lcom/samsung/android/settings/Booster;->mLastBoosterTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 99
    iget-wide v4, p0, Lcom/samsung/android/settings/Booster;->mLastBoosterDuration:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 102
    :cond_0
    iput-wide v0, p0, Lcom/samsung/android/settings/Booster;->mLastBoosterTime:J

    int-to-long v0, p1

    .line 103
    iput-wide v0, p0, Lcom/samsung/android/settings/Booster;->mLastBoosterDuration:J

    .line 105
    iget v0, p0, Lcom/samsung/android/settings/Booster;->mCpuMinFreq:I

    if-lez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 108
    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/Booster;->mGpuMinFreq:I

    if-lez v0, :cond_2

    .line 109
    iget-object p0, p0, Lcom/samsung/android/settings/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_2
    return-void
.end method
