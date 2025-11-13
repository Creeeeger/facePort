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
.field public flags:I

.field public index:I

.field public timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(IJI)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;->index:I

    iput-wide p2, p0, Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;->timeUs:J

    iput p4, p0, Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;->flags:I

    return-void
.end method
