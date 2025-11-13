.class public final Landroid/hardware/input/VirtualMouseScrollEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualMouseScrollEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualMouseScrollEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEventTimeNanos:J

.field private blacklist mXAxisMovement:F

.field private blacklist mYAxisMovement:F


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mEventTimeNanos:J

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualMouseScrollEvent;
    .locals 7

    new-instance v6, Landroid/hardware/input/VirtualMouseScrollEvent;

    iget v1, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mXAxisMovement:F

    iget v2, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mYAxisMovement:F

    iget-wide v3, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mEventTimeNanos:J

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/input/VirtualMouseScrollEvent;-><init>(FFJLandroid/hardware/input/VirtualMouseScrollEvent-IA;)V

    return-object v6
.end method

.method public whitelist setEventTimeNanos(J)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mEventTimeNanos:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setXAxisMovement(F)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "xAxisMovement"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iput p1, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mXAxisMovement:F

    return-object p0
.end method

.method public whitelist setYAxisMovement(F)Landroid/hardware/input/VirtualMouseScrollEvent$Builder;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "yAxisMovement"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iput p1, p0, Landroid/hardware/input/VirtualMouseScrollEvent$Builder;->mYAxisMovement:F

    return-object p0
.end method
