.class public final Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;
.super Ljava/lang/Object;
.source "SemMediaPostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferInfo"
.end annotation


# instance fields
.field public blacklist flags:I

.field public blacklist index:I

.field public blacklist timeUs:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist set(IJI)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "timeUs"    # J
    .param p4, "flags"    # I

    .line 64
    iput p1, p0, Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;->index:I

    .line 65
    iput-wide p2, p0, Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;->timeUs:J

    .line 66
    iput p4, p0, Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;->flags:I

    .line 67
    return-void
.end method
