.class public final Lcom/android/internal/os/KernelCpuBpfTracking;
.super Ljava/lang/Object;
.source "KernelCpuBpfTracking.java"


# static fields
.field private static blacklist sFreqs:[J

.field private static blacklist sFreqsClusters:[I

.field private static blacklist sTracking:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sTracking:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqs:[J

    sput-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqsClusters:[I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getClusters()I
    .locals 2

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist getFreqs()[J
    .locals 2

    sget-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqs:[J

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsInternal()[J

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [J

    return-object v1

    :cond_0
    sput-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqs:[J

    :cond_1
    sget-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqs:[J

    return-object v0
.end method

.method public static blacklist getFreqsClusters()[I
    .locals 2

    sget-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqsClusters:[I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClustersInternal()[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1

    :cond_0
    sput-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqsClusters:[I

    :cond_1
    sget-object v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sFreqsClusters:[I

    return-object v0
.end method

.method private static native blacklist getFreqsClustersInternal()[I
.end method

.method static native blacklist getFreqsInternal()[J
.end method

.method public static native blacklist isSupported()Z
.end method

.method public static blacklist startTracking()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sTracking:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->startTrackingInternal()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sTracking:Z

    :cond_0
    sget-boolean v0, Lcom/android/internal/os/KernelCpuBpfTracking;->sTracking:Z

    return v0
.end method

.method private static native blacklist startTrackingInternal()Z
.end method
