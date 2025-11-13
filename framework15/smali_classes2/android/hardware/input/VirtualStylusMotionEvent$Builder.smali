.class public final Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualStylusMotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualStylusMotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mEventTimeNanos:J

.field private blacklist mIsXSet:Z

.field private blacklist mIsYSet:Z

.field private blacklist mPressure:I

.field private blacklist mTiltX:I

.field private blacklist mTiltY:I

.field private blacklist mToolType:I

.field private blacklist mX:I

.field private blacklist mY:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mToolType:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mAction:I

    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mX:I

    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mY:I

    iput-boolean v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mIsXSet:Z

    iput-boolean v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mIsYSet:Z

    const/16 v1, 0xff

    iput v1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mPressure:I

    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mTiltX:I

    iput v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mTiltY:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mEventTimeNanos:J

    return-void
.end method

.method private blacklist validateTilt(I)V
    .locals 2

    const/16 v0, -0x5a

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tilt must be between -90 and 90"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualStylusMotionEvent;
    .locals 12

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mToolType:I

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mAction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mIsXSet:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mIsYSet:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/input/VirtualStylusMotionEvent;

    iget v2, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mToolType:I

    iget v3, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mAction:I

    iget v4, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mX:I

    iget v5, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mY:I

    iget v6, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mPressure:I

    iget v7, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mTiltX:I

    iget v8, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mTiltY:I

    iget-wide v9, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mEventTimeNanos:J

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroid/hardware/input/VirtualStylusMotionEvent;-><init>(IIIIIIIJLandroid/hardware/input/VirtualStylusMotionEvent-IA;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build stylus motion event with unset y-axis location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build stylus motion event with unset x-axis location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build stylus motion event with unset action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build stylus motion event with unset tool type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAction(I)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported stylus action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mAction:I

    return-object p0
.end method

.method public whitelist setEventTimeNanos(J)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mEventTimeNanos:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPressure(I)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mPressure:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pressure should be between 0 and 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTiltX(I)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->validateTilt(I)V

    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mTiltX:I

    return-object p0
.end method

.method public whitelist setTiltY(I)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->validateTilt(I)V

    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mTiltY:I

    return-object p0
.end method

.method public whitelist setToolType(I)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported stylus tool type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mToolType:I

    return-object p0
.end method

.method public whitelist setX(I)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .locals 1

    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mIsXSet:Z

    return-object p0
.end method

.method public whitelist setY(I)Landroid/hardware/input/VirtualStylusMotionEvent$Builder;
    .locals 1

    iput p1, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/input/VirtualStylusMotionEvent$Builder;->mIsYSet:Z

    return-object p0
.end method
