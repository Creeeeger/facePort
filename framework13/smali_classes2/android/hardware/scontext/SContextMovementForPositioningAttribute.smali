.class public Landroid/hardware/scontext/SContextMovementForPositioningAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextMovementForPositioningAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SContextMovementForPositioningAttribute"


# instance fields
.field private blacklist mMoveDistanceThrs:D

.field private blacklist mMoveDurationThrs:I

.field private blacklist mMoveMinDurationThrs:I

.field private blacklist mNomoveDurationThrs:I


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    .line 35
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->setAttribute()V

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(IIDI)V
    .locals 2
    .param p1, "nomoveDurationThrs"    # I
    .param p2, "moveDurationThrs"    # I
    .param p3, "moveDistanceThrs"    # D
    .param p5, "moveMinDurationThrs"    # I

    .line 65
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    .line 35
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    .line 66
    iput p1, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    .line 67
    iput p2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    .line 68
    iput-wide p3, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    .line 69
    iput p5, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    .line 70
    invoke-direct {p0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->setAttribute()V

    .line 71
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 4

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    const-string v2, "nomove_duration_thrs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    iget v1, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    const-string v2, "move_duration_thrs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    iget-wide v1, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    const-string v3, "move_distance_thrs"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 100
    iget v1, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    const-string v2, "move_min_duration_trhs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const/16 v1, 0x9

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 102
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 7

    .line 76
    iget v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    const/4 v1, 0x0

    const-string v2, "SContextMovementForPositioningAttribute"

    if-gez v0, :cond_0

    .line 77
    const-string v0, "The nomove duration threshold is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v1

    .line 80
    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    if-gez v0, :cond_1

    .line 81
    const-string v0, "The move duration threshold is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v1

    .line 84
    :cond_1
    iget-wide v3, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    const-wide/16 v5, 0x0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    .line 85
    const-string v0, "The move distance threshold is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v1

    .line 88
    :cond_2
    iget v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    if-gez v0, :cond_3

    .line 89
    const-string v0, "The move minimum duration threshold is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v1

    .line 92
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
