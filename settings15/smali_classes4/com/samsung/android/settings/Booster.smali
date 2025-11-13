.class public final Lcom/samsung/android/settings/Booster;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public final mCpuMinFreq:I

.field public final mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public final mGpuMinFreq:I

.field public mLastBoosterDuration:J

.field public mLastBoosterTime:J


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v0, p0, Lcom/samsung/android/settings/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/Booster;->mCpuMinFreq:I

    iput v0, p0, Lcom/samsung/android/settings/Booster;->mGpuMinFreq:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/settings/Booster;->mLastBoosterTime:J

    iput-wide v1, p0, Lcom/samsung/android/settings/Booster;->mLastBoosterDuration:J

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {p1, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v1

    const-string v2, "Booster"

    if-nez v1, :cond_0

    const-string p0, "mSupportedCPUFreqTable is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    aget v1, v1, v5

    iput v1, p0, Lcom/samsung/android/settings/Booster;->mCpuMinFreq:I

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    aget v1, v1, v4

    iput v1, p0, Lcom/samsung/android/settings/Booster;->mCpuMinFreq:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/samsung/android/settings/Booster;->mCpuMinFreq:I

    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/Booster;->mCpuMinFreq:I

    if-lez v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/Booster;->mCPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mCpuMinFreq = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/settings/Booster;->mCpuMinFreq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {p1, v1, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    array-length v1, p1

    if-le v1, v5, :cond_5

    aget p1, p1, v5

    iput p1, p0, Lcom/samsung/android/settings/Booster;->mGpuMinFreq:I

    goto :goto_1

    :cond_5
    if-lez v1, :cond_6

    aget p1, p1, v4

    iput p1, p0, Lcom/samsung/android/settings/Booster;->mGpuMinFreq:I

    goto :goto_1

    :cond_6
    iput v0, p0, Lcom/samsung/android/settings/Booster;->mGpuMinFreq:I

    :goto_1
    iget p1, p0, Lcom/samsung/android/settings/Booster;->mGpuMinFreq:I

    if-lez p1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/Booster;->mGPUMinBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mGpuMinFreq = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/settings/Booster;->mGpuMinFreq:I

    invoke-static {p1, p0, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_2
    return-void
.end method
