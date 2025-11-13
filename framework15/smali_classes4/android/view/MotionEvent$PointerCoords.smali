.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final greylist-max-o INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field public blacklist isResampled:Z

.field private greylist mPackedAxisBits:J

.field private greylist mPackedAxisValues:[F

.field public whitelist orientation:F

.field public blacklist palm:F

.field public whitelist pressure:F

.field public blacklist relativeX:F

.field public blacklist relativeY:F

.field public whitelist size:F

.field public whitelist toolMajor:F

.field public whitelist toolMinor:F

.field public whitelist touchMajor:F

.field public whitelist touchMinor:F

.field public whitelist x:F

.field public whitelist y:F


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public static greylist createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3

    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public whitelist clear()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    return-void
.end method

.method public whitelist copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 6

    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v3, v5, :cond_1

    :cond_0
    array-length v5, v2

    new-array v4, v5, [F

    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    :cond_1
    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->palm:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    iget-boolean v2, p1, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    iput-boolean v2, p0, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    return-void
.end method

.method public whitelist getAxisValue(I)F
    .locals 8

    sparse-switch p1, :sswitch_data_0

    if-ltz p1, :cond_1

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_1

    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const/4 v4, 0x0

    return v4

    :sswitch_0
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    return v0

    :sswitch_1
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    return v0

    :sswitch_2
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    return v0

    :sswitch_3
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return v0

    :sswitch_4
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    return v0

    :sswitch_5
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    return v0

    :sswitch_6
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    return v0

    :sswitch_7
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    return v0

    :sswitch_8
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    return v0

    :sswitch_9
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    return v0

    :sswitch_a
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return v0

    :sswitch_b
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    return v0

    :cond_0
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    return v5

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x6 -> :sswitch_5
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0x1b -> :sswitch_2
        0x1c -> :sswitch_1
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist isResampled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    return v0
.end method

.method public whitelist setAxisValue(IF)V
    .locals 10

    sparse-switch p1, :sswitch_data_0

    if-ltz p1, :cond_4

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_4

    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    if-nez v5, :cond_0

    const/16 v6, 0x8

    new-array v5, v6, [F

    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_0

    :sswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    goto :goto_1

    :sswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    goto :goto_1

    :sswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    goto :goto_1

    :sswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_1

    :sswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_1

    :sswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_1

    :sswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_1

    :sswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_1

    :sswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_1

    :sswitch_9
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_1

    :sswitch_a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_1

    :sswitch_b
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    goto :goto_1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    array-length v7, v5

    if-ge v6, v7, :cond_1

    if-eq v4, v6, :cond_2

    add-int/lit8 v7, v4, 0x1

    sub-int v8, v6, v4

    invoke-static {v5, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    mul-int/lit8 v7, v6, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    invoke-static {v5, v8, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v4, 0x1

    sub-int v9, v6, v4

    invoke-static {v5, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v7

    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    :cond_2
    :goto_0
    or-long v6, v0, v2

    iput-wide v6, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    :cond_3
    aput p2, v5, v4

    :goto_1
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x6 -> :sswitch_5
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0x1b -> :sswitch_2
        0x1c -> :sswitch_1
        0x37 -> :sswitch_0
    .end sparse-switch
.end method
