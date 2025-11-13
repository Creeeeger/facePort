.class public final Lcom/android/internal/os/KernelCpuTotalBpfMapReader;
.super Ljava/lang/Object;
.source "KernelCpuTotalBpfMapReader.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist read()[J
    .locals 1

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->startTracking()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/os/KernelCpuTotalBpfMapReader;->readInternal()[J

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist readInternal()[J
.end method
