.class public Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;
.super Ljava/lang/Object;
.source "SemVideoTranscodingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/SemVideoTranscodingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackSpeedChange"
.end annotation


# instance fields
.field public blacklist endMs:I

.field public blacklist rate:F

.field public blacklist repeatCount:I

.field public blacklist startMs:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->startMs:I

    iput v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->endMs:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->rate:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->repeatCount:I

    return-void
.end method

.method public constructor blacklist <init>(IIF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->startMs:I

    iput p2, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->endMs:I

    iput p3, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->rate:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->repeatCount:I

    return-void
.end method

.method public constructor blacklist <init>(IIFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->startMs:I

    iput p2, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->endMs:I

    iput p3, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->rate:F

    iput p4, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;->repeatCount:I

    return-void
.end method
