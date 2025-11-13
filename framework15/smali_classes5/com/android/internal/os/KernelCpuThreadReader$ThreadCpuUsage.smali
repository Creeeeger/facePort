.class public Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;
.super Ljava/lang/Object;
.source "KernelCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuThreadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadCpuUsage"
.end annotation


# instance fields
.field public final blacklist threadId:I

.field public final blacklist threadName:Ljava/lang/String;

.field public blacklist usageTimesMillis:[I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    iput-object p2, p0, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    return-void
.end method
