.class Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;
.super Ljava/lang/Object;
.source "KernelCpuThreadReaderDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuThreadReaderDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadKey"
.end annotation


# instance fields
.field private final blacklist mProcessId:I

.field private final blacklist mProcessNameHash:I

.field private final blacklist mThreadId:I

.field private final blacklist mThreadNameHash:I


# direct methods
.method constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    iput p2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
