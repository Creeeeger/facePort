.class public final Landroid/graphics/FrameInfo;
.super Ljava/lang/Object;
.source "FrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FrameInfo$FrameInfoFlags;
    }
.end annotation


# static fields
.field public static final blacklist ANIMATION_START:I = 0x6

.field public static final blacklist DRAW_START:I = 0x8

.field public static final blacklist FLAGS:I = 0x0

.field public static final blacklist FLAG_SURFACE_CANVAS:J = 0x4L

.field public static final blacklist FLAG_WINDOW_VISIBILITY_CHANGED:J = 0x1L

.field public static final blacklist FRAME_DEADLINE:I = 0x9

.field private static final blacklist FRAME_INFO_SIZE:I = 0xc

.field public static final blacklist FRAME_INTERVAL:I = 0xb

.field public static final blacklist FRAME_START_TIME:I = 0xa

.field public static final blacklist FRAME_TIMELINE_VSYNC_ID:I = 0x1

.field public static final blacklist HANDLE_INPUT_START:I = 0x5

.field public static final blacklist INPUT_EVENT_ID:I = 0x4

.field public static final blacklist INTENDED_VSYNC:I = 0x2

.field public static final blacklist INVALID_VSYNC_ID:J = -0x1L

.field public static final blacklist PERFORM_TRAVERSALS_START:I = 0x7

.field public static final blacklist VSYNC:I = 0x3


# instance fields
.field public blacklist frameInfo:[J


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    return-void
.end method


# virtual methods
.method public blacklist addFlags(J)V
    .locals 4
    .param p1, "flags"    # J

    .line 129
    iget-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    or-long/2addr v2, p1

    aput-wide v2, v0, v1

    .line 130
    return-void
.end method

.method public blacklist markAnimationsStart()V
    .locals 4

    .line 119
    iget-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x6

    aput-wide v1, v0, v3

    .line 120
    return-void
.end method

.method public blacklist markInputHandlingStart()V
    .locals 4

    .line 114
    iget-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x5

    aput-wide v1, v0, v3

    .line 115
    return-void
.end method

.method public blacklist markPerformTraversalsStart()V
    .locals 4

    .line 124
    iget-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x7

    aput-wide v1, v0, v3

    .line 125
    return-void
.end method

.method public blacklist setVsync(JJJJJJ)V
    .locals 5
    .param p1, "intendedVsync"    # J
    .param p3, "usedVsync"    # J
    .param p5, "frameTimelineVsyncId"    # J
    .param p7, "frameDeadline"    # J
    .param p9, "frameStartTime"    # J
    .param p11, "frameInterval"    # J

    .line 103
    move-object v0, p0

    iget-object v1, v0, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/4 v2, 0x1

    aput-wide p5, v1, v2

    .line 104
    const/4 v2, 0x2

    aput-wide p1, v1, v2

    .line 105
    const/4 v2, 0x3

    aput-wide p3, v1, v2

    .line 106
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    .line 107
    const/16 v2, 0x9

    aput-wide p7, v1, v2

    .line 108
    const/16 v2, 0xa

    aput-wide p9, v1, v2

    .line 109
    const/16 v2, 0xb

    aput-wide p11, v1, v2

    .line 110
    return-void
.end method
