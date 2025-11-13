.class public final Landroid/window/BackEvent;
.super Ljava/lang/Object;
.source "BackEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackEvent$SwipeEdge;
    }
.end annotation


# static fields
.field public static final whitelist EDGE_LEFT:I = 0x0

.field public static final whitelist EDGE_RIGHT:I = 0x1


# instance fields
.field private final blacklist mProgress:F

.field private final blacklist mSwipeEdge:I

.field private final blacklist mTouchX:F

.field private final blacklist mTouchY:F


# direct methods
.method public constructor whitelist <init>(FFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/window/BackEvent;->mTouchX:F

    iput p2, p0, Landroid/window/BackEvent;->mTouchY:F

    iput p3, p0, Landroid/window/BackEvent;->mProgress:F

    iput p4, p0, Landroid/window/BackEvent;->mSwipeEdge:I

    return-void
.end method

.method public static blacklist fromBackMotionEvent(Landroid/window/BackMotionEvent;)Landroid/window/BackEvent;
    .locals 5

    new-instance v0, Landroid/window/BackEvent;

    invoke-virtual {p0}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v1

    invoke-virtual {p0}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result v2

    invoke-virtual {p0}, Landroid/window/BackMotionEvent;->getProgress()F

    move-result v3

    invoke-virtual {p0}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/window/BackEvent;-><init>(FFFI)V

    return-object v0
.end method


# virtual methods
.method public whitelist getProgress()F
    .locals 1

    iget v0, p0, Landroid/window/BackEvent;->mProgress:F

    return v0
.end method

.method public whitelist getSwipeEdge()I
    .locals 1

    iget v0, p0, Landroid/window/BackEvent;->mSwipeEdge:I

    return v0
.end method

.method public whitelist getTouchX()F
    .locals 1

    iget v0, p0, Landroid/window/BackEvent;->mTouchX:F

    return v0
.end method

.method public whitelist getTouchY()F
    .locals 1

    iget v0, p0, Landroid/window/BackEvent;->mTouchY:F

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackEvent{mTouchX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackEvent;->mTouchX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTouchY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackEvent;->mTouchY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackEvent;->mProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSwipeEdge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackEvent;->mSwipeEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
