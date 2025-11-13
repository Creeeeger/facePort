.class public final Lcom/android/internal/os/SelectedProcessCpuThreadReader;
.super Ljava/lang/Object;
.source "SelectedProcessCpuThreadReader.java"


# instance fields
.field private final blacklist mCmdline:[Ljava/lang/String;

.field private blacklist mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

.field private blacklist mPid:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mCmdline:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist readAbsolute()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mCmdline:[Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    aget v2, v0, v2

    iget v3, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mPid:I

    if-ne v3, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getProcessCpuUsage()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    move-result-object v1

    return-object v1

    :cond_1
    iput v2, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mPid:I

    iget v3, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mPid:I

    invoke-static {v3}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->create(I)Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    iget-object v3, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v3}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->startTrackingThreadCpuTimes()V

    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method
