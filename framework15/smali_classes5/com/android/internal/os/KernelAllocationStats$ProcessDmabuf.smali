.class public final Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;
.super Ljava/lang/Object;
.source "KernelAllocationStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelAllocationStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessDmabuf"
.end annotation


# instance fields
.field public final blacklist oomScore:I

.field public final blacklist processName:Ljava/lang/String;

.field public final blacklist retainedBuffersCount:I

.field public final blacklist retainedSizeKb:I

.field public final blacklist surfaceFlingerCount:I

.field public final blacklist surfaceFlingerSizeKb:I

.field public final blacklist uid:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->uid:I

    iput-object p2, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->oomScore:I

    iput p4, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    iput p5, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedBuffersCount:I

    iput p6, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerSizeKb:I

    iput p7, p0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerCount:I

    return-void
.end method
